require_relative 'config'

add = "git subtree add --prefix "

Dir.chdir("..")

PROJECTS.each do |folder, git_repo| 
    unless Dir.exist?(folder)
    	system(`#{add}#{folder} #{git_repo} main`)
    else
        puts "#{folder}: Exist !!!!" ### !!! Не выводится в терминал !!!
    end
end

system(`git push`)