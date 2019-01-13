require 'notepad'

describe Notepad do
  before(:each) do
    @notepad = Notepad.new
  end

  it { is_expected.to respond_to(:add_to_list).with(2).arguments }

  it 'should be able to store a list of notes' do
    @notepad.add_to_list("Title","Body")
    expect(@notepad.all_notes).to eq [{"Title" => "Body"}]
  end

#   it 'should prompt user to enter notes' do
#     allow(STDIN).to receive(:gets) { ‘TestTitle’ }
#     allow(@notepad.get_user_input).to receive(:gets).and_return(TestTitle','TestBody')
#     expect(@notepad.get_user_input).to eq [{'TestTitle' => 'TestBody'}]
#     expect(@notepad.all_notes).to eq [{'TestTitle' => 'TestBody'}]
#   end

  it 'should return a list of stored titles' do
    @notepad.add_to_list("Title","Body")
    @notepad.add_to_list("Title2","Body2")
    expect(@notepad.list_titles).to eq ("Title, Title2")
  end
end
