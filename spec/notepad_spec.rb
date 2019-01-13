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
end
