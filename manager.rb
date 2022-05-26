require_relative './database'

class Manager
  def initialize
    @database = Database.new
  end

  def store(note)
    @database.store(note)
  end

  def show_all
    entries = @database.get_all
    if entries.empty?
      puts "No Entries Found".center(50, "-")
    end
    entries.each_with_index do |item, index|
      puts (index+1).to_s.center(50, "-")
      puts item
      puts "".center(50, "-")
    end
  end
end