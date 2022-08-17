require 'diary'

describe "diary intergration" do

  it "get all diary entries" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("moving", "I moved house")
    diary_entry_2 = DiaryEntry.new("moving again", "I moved house again")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.all).to eq [diary_entry_1, diary_entry_2]
  end

  it "count words in diary" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("moving", "I moved house")
    diary_entry_2 = DiaryEntry.new("moving again", "I moved house again")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    #expect(diary.count_words).to eq 7
  end



end