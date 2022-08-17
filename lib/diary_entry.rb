class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @bookmark = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    return @contents.split.length
  end

  def reading_time(wpm) 
    return (self.count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes) 
    chunk = wpm * minutes
    words = @contents.split
    if @bookmark < words.size
      result = words[@bookmark, chunk]
      @bookmark += chunk
    else
      result = words[0, chunk]
      @bookmark = chunk
    end
    return result.join(" ")
  end
end