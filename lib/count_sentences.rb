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

    self.split(/[.?!]/).reject(&:empty?).count 
#bingind.pry
    #split String
    #count the splitted string
    #remove empty strings
    #iterate through each and flatten the array, do it again.

  end
end
