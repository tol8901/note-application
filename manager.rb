require_relative './database'

class Manager
  def initialize
    @database = Database.new
  end

  def store(note)
    @database.store(note)
  end
end