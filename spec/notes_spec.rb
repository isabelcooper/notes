require 'notes'

describe Notes do

  it { is_expected.to respond_to(:add_to_list).with(2).arguments }

  # it 'should be able to store a list of notes' do
  #   @notes.add_to_list("Title","Body")
  #   expect(@notes.all_notes).to eq ["Title", "Body"]
  # end
end
