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

  def count_sentences
    newAr = []
    counter = 0
    delimiters = ['.', '!', '?']
    newAr = self.split(Regexp.union(delimiters))
    newAr.each do |element|
      if element.length == 1 || element.length == 0
        counter +=1
      end
    end
    
    newAr.length - counter
  end
end
