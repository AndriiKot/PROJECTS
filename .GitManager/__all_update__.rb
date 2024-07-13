require_relative './config'
require_relative './subtreeManager_v_02_OPP/subtree_OPP.rb'


SubtreeManager.new(**PROJECTS).manage_subtree
READMEManager.new(path: '../', template: "# My Projects: \n\n", config: PROJECTS).update

