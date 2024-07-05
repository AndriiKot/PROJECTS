require_relative 'config'

add = "git subtree add --prefix "

Dir.chdir("..")

PROJECTS.each do |folder, git_repo|
 
    unless Dir.exist?(folder)
    	system(`#{add}#{folder} #{'Vue'} main`)
    end
    if Dir.exist?(folder)
        puts "\n\n\n\#{folder}: Exist !!!!\n\n\n" ### !!! выводится в терминал !!!
    end
end

system(`git push`)