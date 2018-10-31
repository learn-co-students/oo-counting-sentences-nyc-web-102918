require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else false
    end
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    counted = self.split(" ").select do |sentence|
      sentence.end_with?(".") || sentence.end_with?("?") || sentence.end_with?("!")
      end
      counted.length
    end
  end
