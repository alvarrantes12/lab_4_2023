require 'rails_helper'

RSpec.describe Supermarket, type: :model do
  subject {
    described_class.new(first_name: "Price Smart")
  }

  it "valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without first name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end
end
