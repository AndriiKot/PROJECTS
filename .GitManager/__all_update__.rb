require_relative './config'
require_relative './subtreeManager_v_02_OOP/subtree_OOP.rb'
require_relative './readmeManager_v_1_0_0/update_README.rb'

main_path = '../'

#SubtreeManager.new(path: main_path, **PROJECTS).manage_subtree
READMEManager.new(path: main_path, template: "# My Projects: \n\n", config: PROJECTS).update

