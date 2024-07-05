projects = {
 Counter: 'https://github.com/AndriiKot/Counter__Vue__.git',
}

update = "git subtree pull --prefix "

projects.each do |folder, git_repo| 
    system(`#{update}#{folder} #{git_repo} main`)
end

system(`git push`)
