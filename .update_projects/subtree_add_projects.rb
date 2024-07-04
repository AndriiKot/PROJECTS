require_relative 'config'
require 'parallel'

Dir.chdir('..')

Parallel.each(PROJECTS, in_processes: PROJECTS.size) do |folder, git_repo|
  if Dir.exist?(folder)
    system("git subtree add --prefix #{folder} #{git_repo} main")
  end
end

system(`git push`)

