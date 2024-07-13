require_relative 'config.rb'

class READMEManager 
    def initialize(path: './', template: '', config: {})
        @path = path
        @new_template = template
        @config = config
    end
    def update
      unless diff_template? 
        create_template()
        file_open(@path + 'README.md') 
        git_push()
      end
    end    
    
    private

    def old_template
        template = File.read(@path + 'README.md')
    end

    def diff_template?
        create_template()
        old_template() == @new_template
    end

    def count_projects(project)
        count = Dir.glob("#{@path}/#{project}/*")
                       .select do |f| 
                           File.directory?(f) && 
                           !File.file?(f) && !File.basename(f).start_with?(".") 
                       end.count
    end

    def create_template() 
        @config.each do |key, value|
          @new_template += "### [#{key}](#{value}): #{count_projects(key)}\n"
        end
    end
    def file_open(path, mode = "w+") 
        File.open(path, mode) do |f|
            f.puts(@new_template)
        end
    end
    def git_push
        system(`cd #{@path} && git add . && git commit -m "PROJECTS !!! 'README.md update' !!!" && git push` )
    end
end

READMEManager.new(path: '../', template: "# My Projects: \n\n", config: PROJECTS).update







  




