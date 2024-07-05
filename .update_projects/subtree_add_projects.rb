﻿require_relative 'config'

add = "git subtree add --prefix "

Dir.chdir("..")

PROJECTS.each do |folder, git_repo| 
   if Dir.exist?(folder)
     puts "\n #{folder}: Exist !!!\n" 
   else
     system(`#{add}#{folder} #{git_repo} main`)
   end
end

system(`git push`)
exit true