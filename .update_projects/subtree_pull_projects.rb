require_relative 'config'

# pull = "git subtree pull --prefix "

# PROJECTS.each do |folder, git_repo| 
#     system(`cd .. && #{pull}#{folder} #{git_repo} main`)
# end

system(`git push`)


require 'parallel'

Parallel.each(PROJECTS, in_processes: PROJECTS.size) do |folder, git_repo|
  Dir.chdir('..') do
    system("git subtree pull --prefix #{folder} #{git_repo} main")
  end
end

system('git push')

