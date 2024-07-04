require_relative 'config'

add = "git subtree add --prefix "

Dir.chdir("..")

PROJECTS.each do |folder, git_repo| 
    system(`#{add}#{folder} #{git_repo} main`)
end

system(`git push`)