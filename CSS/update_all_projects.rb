projects = {
 Vue: 'https://github.com/AndriiKot/Vue.git',
 React: 'https://github.com/AndriiKot/React.git', 
 VanillaJS: 'https://github.com/AndriiKot/VanillaJS.git', 
 CSS: 'https://github.com/AndriiKot/CSS.git'
}

update = "git subtree pull --prefix "

projects.each do |folder, git_repo| 
    system(`#{update}#{folder} #{git_repo} main`)
end

system(`git push`)
