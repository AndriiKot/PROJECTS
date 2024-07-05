require_relative 'config'

add = "git subtree add --prefix "

Dir.chdir("..")
#folder = "Vue"   ### !!! такая папка на уровень выше есть !!!

PROJECTS.each do |folder, git_repo|
 
    unless Dir.exist?(folder)
    	system(`#{add}#{folder} #{'Vue'} main`)
    end
    if Dir.exits?(folder)
        puts "#{folder}: Exist !!!!" ### !!! выводится в терминал !!!
    end
end

system(`git push`)