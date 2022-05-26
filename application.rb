require_relative './manager'

module Application
  def self.run
    menu = Menu.new
    begin
      puts " Simple Note Application ".center(50, '#')
      puts "a) Add"
      puts "b) Edit"
      puts "c) Delete"
      puts "d) Show All"
      puts "q) Quit"
      print "Select: "
      choice = gets.chomp

      case choice
      when 'a' then menu.add
      end

    end while choice != 'q'
  end

  #Menu class to manage inner operations
  class Menu
    def initialize
      @manager = Manager.new
    end

    def add

    end
  end
end