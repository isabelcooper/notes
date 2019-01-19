class Notepad
  attr_reader :all_notes

  def initialize
    @all_notes = []
  end

  def add_to_list(note)
    @all_notes << note
  end

  def user_input
    puts 'Enter title'
    title = gets.chomp
    puts 'Enter body'
    body = gets.chomp
    add_to_list({title => body})
  end

  def list_titles
    @all_notes.map { |note| "#{note.title}" }.join(', ')
  end
end
