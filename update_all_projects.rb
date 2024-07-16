projects = {
 Loading: 'https://github.com/AndriiKot/Loading.git',
 Text_Animation_RotateY_360deg: 'https://github.com/AndriiKot/Text_RotateY_360deg_.git',
 Images_Grid: 'https://github.com/AndriiKot/Images_Grid.git',
 "Flex-box__01": 'https://github.com/AndriiKot/Flex-box__01.git',
}

update = "git subtree pull --prefix "

projects.each do |folder, git_repo| 
    system(`#{update}#{folder} #{git_repo} main`)
end

system(`git push`)
