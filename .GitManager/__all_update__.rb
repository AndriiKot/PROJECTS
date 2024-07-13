require_relative './config'
require_relative './subtreeManager_v_02_OPP/subtree_OPP.rb'

main_path = '../'

SubtreeManager.new(path: main_path, **PROJECTS).manage_subtree
READMEManager.new(path: main_path, template: "# My Projects: \n\n", config: PROJECTS).update

