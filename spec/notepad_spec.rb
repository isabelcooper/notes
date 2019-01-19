require 'notepad'

describe Notepad do
  let(:note)    { Note.new('Title', 'Body') }
  describe '#add_to_list' do

    it { is_expected.to respond_to(:add_to_list).with(1).argument }

    it 'should be able to store a list of notes' do
      subject.add_to_list(note)
      expect(subject.all_notes).to eq [note]
    end
  end

  it 'should prompt user to enter notes' do
    subject.stub(:gets).and_return("TestTitle", "TestBody")
    expect(subject.user_input).to eq ([{"TestTitle" => "TestBody"}])
  end

  describe '#list_titles' do
    it 'should return a list of stored titles' do
      subject.add_to_list(note)
      subject.add_to_list(Note.new('Title2', 'Body2'))
      expect(subject.list_titles).to eq 'Title, Title2'
    end
  end
end
