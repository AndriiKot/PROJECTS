require_relative 'config'

pull = "git subtree add --prefix "

Dir.chdir("..")

PROJECTS.each do |folder, git_repo| 
    system(`#{pull}#{folder} #{git_repo} main`)
end

system(`git push`)