projects = {
 Loading: 'https://github.com/AndriiKot/Loading.git',
}

update = "git subtree pull --prefix "

projects.each do |folder, git_repo| 
    system(`#{update}#{folder} #{git_repo} main`)
end

system(`git push`)
