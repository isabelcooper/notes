class Note
  def initialize(title, body)
    @title = title
    @body = body
  end

  def read_note
    { @title => @body }
  end
end
