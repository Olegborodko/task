require "rspec"
require_relative "polynomial.rb"

describe Polynomial do 

  it "test_first_negative" do
    p=Polynomial.new([-5,-2,1,0,8])
    p.create_polynomial.should=="-5x^4-2x^3+x^2+8"
  end

  it "test_simple" do
    p=Polynomial.new([1,0,7])
    p.create_polynomial.should=="x^2+7"
  end

  it "test_first_minus_one" do
    p=Polynomial.new([-1,-2,3,0])
    p.create_polynomial.should=="-x^3-2x^2+3x"
  end

  it "test_all_zero" do
    p=Polynomial.new([0,0,0])
    p.create_polynomial.should=="0"
  end

  it "error" do
   p=Polynomial.new([1,1])
   expect { p.create_polynomial }.to raise_error
  end

  
end
 
=begin
class PolynomialTest 
  def setup
    @p1 = Polynomial.new([-5,-2,1,0,8])
    @p2 = Polynomial.new([1,0,7])
    @p3 = Polynomial.new([-1,-2,3,0])
    @p4 = Polynomial.new([0,0,0])
  end
 
  def test_first_negative
    assert_equal("-5x^4-2x^3+x^2+8", @p1.to_s)
  end
 
  def test_simple
    assert_equal("x^2+7", @p2.to_s)
  end
 
  def test_first_minus_one
    assert_equal("-x^3-2x^2+3x", @p3.to_s)
  end
 
  def test_all_zero
    assert_equal("0", @p4.to_s)
  end
 
  def test_error
    e = assert_raise(ArgumentError) { Polynomial.new([1]) }
    assert_match(/Two or more coefficients are required/, e.message)
  end
end
 
m=PolynomialTest.new
m.setup
m.test_first_negative
#Test::Unit::UI::Console::TestRunner.run(PolynomialTest)
=end