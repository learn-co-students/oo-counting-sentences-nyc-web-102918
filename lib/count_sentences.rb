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
	 #convert to array of words
	words= self.split()
	count=0;
    #check if each word ends with . or ? or !
	words.each {|word|
	  if word.end_with?("?")||word.end_with?("!")||word.end_with?(".")
		count+=1
	  end
		  }
	  count
  end
end
	  
	  
	