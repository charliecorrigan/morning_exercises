class TextScanner
  attr_reader :text

  def initialize(file)
    @text = File.open(file, "r").read
  end


  def word_count
    counted_words = {}
  
    unique_words = text.split.uniq.map! do |word|
      word = word.delete(".,/;:'?!\\")
      word
    end
    unique_words.each do |word|
      counted_words[word] = text.split.count(word)
    end
    counted_words
  end
end