projects = {
 Loading: 'https://github.com/AndriiKot/Loading.git',
 Text_Animation_RotateY_360deg: 'https://github.com/AndriiKot/Text_RotateY_360deg_.git',
}

update = "git subtree pull --prefix "

projects.each do |folder, git_repo| 
    system(`#{update}#{folder} #{git_repo} main`)
end

system(`git push`)
