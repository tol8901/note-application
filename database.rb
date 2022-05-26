require 'pstore'

# Will use a file-based persistence mechanism based on Hash to save note objects
# In Ruby there is a class PStore just for that purpose:
# https://ruby-doc.org/stdlib-2.5.3/libdoc/pstore/rdoc/PStore.html
class Database
  def initialize
    @store = PStore.new("notes.store")
  end

  def store(note)
    @store.transaction do
      @store[note.id.to_sym] = note
    end
  end
end