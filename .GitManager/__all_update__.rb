require_relative './config'
require_relative './subtreeManager_v_02_OPP/subtree_OPP.rb'
require_relative './readmeManager_v_1_0_0/update_README.rb'

main_path = '../'

SubtreeManager.new(path: main_path, **PROJECTS).manage_subtree
READMEManager.new(path: main_path, template: "# My Projects: \n\n", config: PROJECTS).update


# pp SubtreeManager.new(path: main_path, **PROJECTS)
# puts "\n\n README: \n"
# pp READMEManager.new(path: main_path, template: "# My Projects: \n\n", config: PROJECTS)
