require 'note'
describe Note do

  let(:note) { Note.new('TestTitle', 'TestBody')}

  it 'should save the title' do
    expect(note.title).to eq 'TestTitle'
  end

  it 'should save the body' do
    expect(note.body).to eq 'TestBody'
  end
end
