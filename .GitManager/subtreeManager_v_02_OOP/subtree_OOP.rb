﻿
class SubtreeManager

  def initialize(path: '../../', **project_hash)
    @projects = project_hash
    @commands = %w[add pull]
    @path = path
    @folders = Dir.entries(@path)
  end
  
  def manage_subtree
    @commands.each do |command|
      @projects.each do |folder_name, git_repository|
        next if (command == 'add' && @folders.include?(folder_name))
        perform_subtree_command(command, folder_name, git_repository)
      end
    end
  end

  private
  def perform_subtree_command(action, project_directory, repository_url)
    subtree_command = "git subtree #{action} --prefix #{project_directory} #{repository_url} main"
    system("cd #{@path} && #{subtree_command} && git push")
  end

end


