require_relative 'config'
require 'parallel'

Parallel.each(PROJECTS, in_processes: PROJECTS.size) do |folder, git_repo|
    Dir.chdir('..') do
      system("git subtree pull --prefix #{folder} #{git_repo} main")
    end
end
    
system('git push')

