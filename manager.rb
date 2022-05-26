require_relative './database'

class Manager
  def initialize
    @database = Database.new
  end
end