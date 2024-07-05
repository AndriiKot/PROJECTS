require_relative 'config'

add = "git subtree add --prefix "

Dir.chdir("..")

PROJECTS.each do |folder, git_repo| 
    if  Dir.exist?(folder)
      puts "\n\n\n#{folder}: Exist !!!!\n\n\n"
  else 
#    system(`#{add}#{folder} #{git_repo} main`)
#    exec(`#{add}#{folder} #{git_repo} main`)
     spawn(`#{add}#{folder} #{git_repo} main`)
  end
end

system(`git push`)