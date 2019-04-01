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
    split_array = []
    split_array = self.split(/\W+\s/)
  #   split_array = self.split(/\W+/)
    binding.pry
    split_array.count { |x| x.end_with?(".","?", "!")}
  end
end
