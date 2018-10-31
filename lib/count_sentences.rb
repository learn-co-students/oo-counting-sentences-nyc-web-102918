require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    word_array = self.split(" ")
    sentence_array = word_array.select do |word|
      word.sentence? || word.question? || word.exclamation?
    end 
    sentence_array.length
  end
end
