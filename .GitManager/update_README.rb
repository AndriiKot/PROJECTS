﻿require_relative 'config.rb'

class READMEManager 
    def initialize(path: './', template: '', config: {})
        @path = path
        @template = template
        @config = config
    end
    def update
        create_template()
        file_open(@path + 'README.md') 
        git_push()
    end    
    
    private
    def create_template() 
        @config.each do |key, value|
          @template += "### [#{key}](#{value})\n"
        end
    end
    def file_open(path, mode = "w+") 
        File.open(path, mode) do |f|
            f.puts(@template)
        end
    end
    def git_push
        system(`cd #{@path} && git add . && git commit -m "PROJECTS !!! 'README.md update' !!!" && git push` )
    end
end

 p READMEManager.new(path: '../', template: "# My Projects: \n\n", config: PROJECTS).update

p "HI!"






  



