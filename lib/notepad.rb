class Notepad

  attr_reader :all_notes

  def initialize
    @all_notes = []
  end

  def add_to_list(title, body)
    @all_notes << {title => body}
  end
end
