class Integer 
  def palindrome?
    self.to_s.reverse == self.to_s
  end
end
