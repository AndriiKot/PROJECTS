require_relative 'config'

add  = "git subtree add --prefix "

Parallel.each(PROJECTS, in_processes: PROJECTS.size) do |folder, git_repo|
  puts "Cloning #{folder} from #{git_repo}"
  Dir.chdir('..') do
    system("git subtree pull --prefix #{folder} #{git_repo} main")
  end
  puts "#{folder} finished"
end

PROJECTS.each do |folder, git_repo| 
  if !Dir.exist?("../#{folder}")
    system(`cd .. && #{add}#{folder} #{git_repo} main`)
  end
end

system(`git push`)

