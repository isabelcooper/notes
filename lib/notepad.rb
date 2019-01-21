require_relative 'note'
require 'socket'

class Notepad
  attr_reader :all_notes

  def initialize
    @all_notes = []
    @server = TCPServer.new(2345)
  end

  def add_to_list(note)
    @all_notes << note
  end

  def user_input
    answer = nil
    socket = @server.accept
    while answer != "No"
      socket.puts 'Enter title'
      title = socket.gets.chomp
      socket.puts 'Enter body'
      body = socket.gets.chomp
      add_to_list({title => body})
      socket.puts "You added: #{@all_notes.last}.Continue?"
      answer = socket.gets.chomp
    end
    socket.close
  end

  def list_titles
    @all_notes.map { |note| "#{note.title}" }.join(', ')
  end
end
