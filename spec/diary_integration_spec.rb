require 'diary'
require 'diary_entry'

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
    expect(diary.count_words).to eq 7
  end

  it "returns reading time for diary" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("moving", "I moved house")
    diary_entry_2 = DiaryEntry.new("moving again", "I moved house again")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.reading_time(2)).to eq 4
  end 

  it "finds best entry for reading time" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("moving", "I moved house")
    diary_entry_2 = DiaryEntry.new("moving again", "I moved house again")
    diary_entry_3 = DiaryEntry.new("moving yet again", "moving")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.add(diary_entry_3)
    expect(diary.find_best_entry_for_reading_time(1,5)).to eq diary_entry_2
  end

  it "finds best entry for reading time" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("moving", "I moved house once more and I'm tired")
    diary_entry_2 = DiaryEntry.new("moving again", "I moved house again")
    diary_entry_3 = DiaryEntry.new("moving yet again", "moving")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    diary.add(diary_entry_3)
    expect(diary.find_best_entry_for_reading_time(2,3)).to eq diary_entry_2
  end

end