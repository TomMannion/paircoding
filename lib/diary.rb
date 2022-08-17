require_relative './diary_entry.rb'

class Diary
  def initialize
    @diary = []
  end

  def add(entry)
    @diary << entry
  end

  def all
    return @diary
  end

  def count_words
    counter = 0
    @diary.each do |entry|
      counter += entry.count_words
    end
    counter
  end

  def reading_time(wpm)
    (self.count_words / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    selected = @diary.select {|entry| entry.count_words <= wpm * minutes}
    ordered = selected.sort_by {|entry| entry.count_words}.last
  end
end