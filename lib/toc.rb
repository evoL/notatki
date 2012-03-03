#-*- coding: utf-8 -*-
require 'facets'
require 'yaml'

class String
    def deurlize
        self.split(/[-_]+/).join(' ').briefcase
    end
end

def toc(directory)
    files = Dir.glob("content/#{directory}/*")

    output = "<dt>#{directory.deurlize}</dt>"
    output << %Q{<dd><ul class="notes">}

    rx = /^content(\/[a-zA-Z0-9\-_]+)\/([a-zA-Z0-9\-_]+)/
    ymlrx = /^---\n(.+?)---(?:\n|$)/m

    output << files.map do |name|
        data = name.match(rx)

        f = open(name, 'r')
        ymldata = f.read.match(ymlrx)
        attrs = YAML.load(ymldata[1]) if ymldata
        f.close

        if attrs
            title = attrs['title']
            description = attrs['description'] || ''
        else
            title = data[2].deurlize
            description = ''
        end

        %Q{
            <li>
                <a href="#{data[1]}/#{data[2]}">
                    <em>#{title}</em>
                    <small>#{description}</small>
                </a>
            </li>
        }
    end.join('')

    output << %Q{</ul></dd>}
end