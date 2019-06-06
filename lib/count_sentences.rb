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
    array = self.split(/[.!?]/)
    new_array = array.select do 
      |sentence| !sentence.include?("")
      return new_array.count
    end
    binding.pry
  end
  
end
