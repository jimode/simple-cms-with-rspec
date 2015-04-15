require 'rails_helper'

# RSpec.describe User, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe User do
  it "is valid with a firstname"
  it "firstname name can not exceed 25 characters"
  it "invalid without a lastname"
  it "last name can not exceed 25 characters"
  it "is invalid without an email address"
  it "is invalid without a password"
  it "password can not exceed 40 characters"
end