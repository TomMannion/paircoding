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

  it "calculates time taken to read diary entry" do
    diary_entry_1 = DiaryEntry.new("Moving", "i moved home again and again")
    expect(diary_entry_1.reading_time(3)).to eq 2
  end

  it "calculates time taken to read diary entry" do
    diary_entry_1 = DiaryEntry.new("Moving", "i moved home more than once today")
    expect(diary_entry_1.reading_time(3)).to eq 3
  end

  it "returns readable chunk from last read" do
    diary_entry_1 = DiaryEntry.new("Moving", "i moved home more than once today")
    expect(diary_entry_1.reading_chunk(2,2)).to eq "i moved home more"
  end

  it "returns readable chunk from last read cycle" do
    diary_entry_1 = DiaryEntry.new("Moving", "i moved home more than once today")
    diary_entry_1.reading_chunk(2,2)
    diary_entry_1.reading_chunk(2,2)
    expect(diary_entry_1.reading_chunk(2,2)).to eq "i moved home more"
  end

end