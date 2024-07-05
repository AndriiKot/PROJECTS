require_relative 'config'

class SubtreeManager

  def initialize(base_path: '../', **project_hash)
    @projects = project_hash
    @commands = %w[add pull]
    @path = base_path
    @folders = Dir.entries(@path)
  end

  
  def manage_subtree()
    puts "Starting subtree management..."
    @commands.each do |com|
      puts "Executing command: #{com}"
      @projects.each do |folder, git_repo|
        next if (com == 'add' && @folders.include?(folder))
        puts "Executing subtree command for folder: #{folder}, repository: #{git_repo}"
        subtree(com, folder, git_repo)
      end
    end
    puts "Subtree management completed."
  end

  private
  def perform_subtree_command(command, folder_name, git_repository)
    system("git subtree #{command} --prefix #{folder_name} #{git_repository} main")
  end
end

update = SubtreeManager.new(**PROJECTS)

update.manage_subtree

