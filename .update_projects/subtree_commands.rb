require_relative 'config'

class SubtreeManager

  def initialize(base_path: '../', **project_hash)
    @projects = project_hash
    @commands = %w[add pull]
    @path = base_path
    @folders = Dir.entries(@path)
  end

  
  def manage_subtree()
    # puts "Starting subtree management..."
    @commands.each do |com|
      # puts "Performing #{com} command..."
      # gets
      @projects.each do |folder, git_repo|
        # puts "Checking #{folder}..."
        # gets
        # next if (com == 'add' && @folders.include?(folder))
        # puts "Executing command for #{folder}..."
        # gets
        next if (com == 'add' && @folders.include?(folder))
        perform_subtree_command(com, folder, git_repo)
        # puts "Command for #{folder} executed successfully."
        # gets
      end
    end
    # puts "Subtree management complete."
    # gets
  end

  private
  def perform_subtree_command(command, folder_name, git_repository)
    puts "!!!! SYSTEM !!!!"
    system(`cd #{@path} && git subtree #{command} --prefix #{folder_name} #{git_repository} main`)
  end
end

update = SubtreeManager.new(**PROJECTS)
update.manage_subtree

