require_relative 'config'
require 'parallel'

Dir.chdir('..')

Parallel.each(PROJECTS, in_processes: PROJECTS.size) do |folder, git_repo|
      system("git subtree pull --prefix #{folder} #{git_repo} main")
end
    
system('git push')

