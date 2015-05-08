require 'rails_helper'

# RSpec.describe Subject, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Subject do
  it "is valid with a name" do
    subject = Subject.new(
      name: "Initial Subject",
      position: 1,
      visible: true)
    expect(subject).to be_valid
  end
  
  it "is invalid without a name" do
    subject = Subject.new(
      name: " ",
      position: 1,
      visible: false)
      subject.valid?
      expect(subject.errors[:name]).to include("can't be blank")
  end
  
  it "is valid with a position"
  it "should have a position of true or false"
  it "is valid with a position number"
end