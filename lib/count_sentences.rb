require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
sentences = self.split(" ")
sentence_array = sentences.select {|words| words.sentence? || words.question? || words.exclamation?}
sentence_array.size
#binding.pry
  end
end
