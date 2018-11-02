require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end
#*********************************************
#if you're trying to split a sentence on multiple varying qualities. how do you identify it? Answer: you split it into words array, then see if any of those words return true for any of the methods above... then you

  def count_sentences
    words_array = self.split(" ")
    sentence_array = words_array.select {|word| word.sentence? || word.question? || word.exclamation?}

    sentence_array.count
  end


end #class String
