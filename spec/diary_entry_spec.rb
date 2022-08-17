require 'diary_entry'

describe DiaryEntry do

  it "check for title" do
    diary_entry_1 = DiaryEntry.new("Moving", "i move home")
    expect(diary_entry_1.title).to eq "Moving"
  end

  it "check for contents" do
    diary_entry_1 = DiaryEntry.new("Moving", "i move home")
    expect(diary_entry_1.contents).to eq "i move home"
  end

  it "counts words in diary entry" do
    diary_entry_1 = DiaryEntry.new("Moving", "i move home")
    expect(diary_entry_1.count_words).to eq 3
  end

end