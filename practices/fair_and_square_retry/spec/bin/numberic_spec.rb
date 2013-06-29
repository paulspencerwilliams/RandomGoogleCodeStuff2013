require_relative '../../bin/numeric'

describe Integer do
  describe "when asked if palindrome" do
    context "for palindrome" do
      it "should report true" do
         232.palindrome?.should eq(true)
      end 
    end
    context "for non palindrome" do
      it "should report false" do
         233.palindrome?.should eq(false)
      end 
    end
  end
  
end


