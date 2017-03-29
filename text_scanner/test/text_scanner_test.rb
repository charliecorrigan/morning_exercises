require 'minitest/autorun'
require 'minitest/pride'
require './lib/text_scanner'

class TextScannerTest < Minitest::Test
  def test_it_exists
    t = TextScanner.new("./test/fixtures/alice.txt")
    assert_instance_of TextScanner, t
  end

  def test_word_count_method_returns_hash
    t = TextScanner.new("./test/fixtures/alice.txt")
    assert_equal Hash, t.word_count.class
  end

  def test_word_count_key_return_values
    skip
    t = TextScanner.new("./test/fixtures/alice.txt")
    unique = t.word_count
    assert_equal [1, 2, 3, 4], unique.keys
  end

  def

end



# t =  TextScanner.new("alice.txt")
# t.word_count
# => #  returns a hash with keys containing unique words, 
#       values are the number of times the word appeared
# t.most_popular_words
# => # returns an array of the top 3 most used words in the text
# t.longest_word
# => # returns the longest word in the text