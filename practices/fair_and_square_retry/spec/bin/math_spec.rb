require_relative '../../bin/math.rb'

describe Math do
  describe "when asked for sqrt_range" do
    context "when bounded by perfect squares(9..16)" do
      it "should return correct range" do
        Math.sqrt_range((9..16)).should eq((3..4))
      end
    end
    context "when started_with_perfect_square(9..15)" do
      it "should return correct range" do
        Math.sqrt_range((9..15)).should eq((3..3))
      end
    end
    context "when ended by perfect squares(10..16)" do
      it "should return correct range" do
        Math.sqrt_range((10..16)).should eq((4..4))
      end
    end
    context "when bounded by non perfect squares(8..17)" do
      it "should return correct range" do
        Math.sqrt_range((8..17)).should eq((3..4))
      end
    end
  end
end
