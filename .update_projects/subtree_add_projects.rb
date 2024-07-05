require_relative 'config'

add = "git subtree add --prefix "

Dir.chdir("..")
folder = "Vue-1"

#PROJECTS.each do |folder, git_repo|
 
    unless Dir.exist?(folder)
    	system(`#{add}#{folder} #{'Vue'} main`)
    else
        puts "#{folder}: Exist !!!!" ### !!! Не выводится в терминал !!!
    end
#end

system(`git push`)