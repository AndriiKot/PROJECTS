require_relative './config'
require_relative './subtreeManager_v_02_OPP/subtree_OPP.rb'


template_test = <<~EOF 
    # My Projects 

    ### [CSS](https://github.com/AndriiKot/CSS)
    ### [Vue](https://github.com/AndriiKot/Vue)
    ### [React](https://github.com/AndriiKot/React)
    ### VanillaJS
EOF

template = "# My Projects: \n\n"

PROJECTS.each do |key, value|
  template += "### [#{key}](#{value})\n"
end
 

File.open('../README.md', 'w+') do |f|
  f.puts(template)
end

# system(`git add .`)
# system(`git commit -m "PROJECTS !!! 'README.md update' !!!"`)
# system(`git push`)





  




