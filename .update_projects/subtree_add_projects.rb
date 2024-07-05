require_relative 'config'

add = "git subtree add --prefix "

Dir.chdir("..")

PROJECTS.each do |folder, git_repo| 
   if Dir.exist?(folder)
     puts "\n #{folder}: Exist !!!\n" 
   else
     sleep 1
     system(`#{add}#{folder} #{git_repo} main`)
   end
end

if system(`git push`)
  exit true
else
  exit false
end