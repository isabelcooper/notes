require 'note'
describe Note do
  it 'should return the details of a given book as a hash' do
    note = Note.new('TestTitle', 'TestBody')
    expect(note.read_note).to eq ({ 'TestTitle' => 'TestBody' })
  end
end
