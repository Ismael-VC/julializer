require File.expand_path('../../../spec_helper', __FILE__)

describe "Float#>=" do
  it "returns true if self is greater than or equal to other" do
    "(5.2 >= 5.2)".should be_equivalent_to "true"
    "(9.71 >= 1)".should be_equivalent_to "true"
    "(5.55382 >= 0xfabdafbafcab)".should be_equivalent_to "false"
  end

  xit "raises an ArgumentError when given a non-Numeric" do
    lambda { 5.0 >= "4"       }.should raise_error(ArgumentError)
    lambda { 5.0 >= mock('x') }.should raise_error(ArgumentError)
  end
end
