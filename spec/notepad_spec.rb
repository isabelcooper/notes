require 'notepad'

describe Notepad do
  before(:each) do
    @notepad = Notepad.new
    @note = Note.new('Title', 'Body')
  end

  it { is_expected.to respond_to(:add_to_list).with(1).argument }

  it 'should be able to store a list of notes' do
    @notepad.add_to_list((@note))
    expect(@notepad.all_notes).to eq [@note]
  end

#   it 'should prompt user to enter notes' do
#     allow(STDIN).to receive(:gets) { ‘TestTitle’ }
#     allow(@notepad.user_input).to receive(:gets).and_return(TestTitle','TestBody')
#     expect(@notepad.user_input).to eq [ { 'TestTitle' => 'TestBody' } ]
#     expect(@notepad.all_notes).to eq [ { 'TestTitle' => 'TestBody' } ]
#   end

  it 'should return a list of stored titles' do
    @notepad.add_to_list((@note))
    @notepad.add_to_list(Note.new('Title2', 'Body2'))
    expect(@notepad.list_titles).to eq('Title, Title2')
  end
end
