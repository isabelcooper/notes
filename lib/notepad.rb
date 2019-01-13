class Notepad

  attr_reader :all_notes

  def initialize
    @all_notes = []
  end

  def add_to_list(title, body)
    @all_notes << {title => body}
  end

  def get_user_input
    puts "Enter title"
    title = gets.chomp
    puts "Enter body"
    body = gets.chomp
    add_to_list(title, body)
  end


end
