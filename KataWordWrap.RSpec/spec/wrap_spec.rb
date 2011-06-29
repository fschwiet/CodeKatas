require 'wrap'

describe "word-wrapping long text into lines" do
  describe "no wrapping required" do
    describe "when text is smaller than wrap-column" do
      it "should return text" do
        "text".wrap(7).should == "text"
      end
    end
  end

  describe "break long word apart" do
    describe "when a single word is longer than wrap-column" do
      it "should wrap word into two lines" do
        "text".wrap(2).should == "te\nxt"
      end
    end
  end
end
