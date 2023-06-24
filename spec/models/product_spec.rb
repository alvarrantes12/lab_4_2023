require 'rails_helper'

RSpec.describe Product, type: :model do
  subject {
    described_class.new(name: "Cerveza",
                        price: 1200)
  }

  it "valid with valid attributes " do 
    expect(subject).to be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a name with more then 10 letters" do
    subject.name = "ABCDEFGHIJk"
    expect(subject).to_not be_valid
  end

  it "is not valid without price" do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a price with more then 8 numbers" do
    subject.price = 123456789
    expect(subject).to_not be_valid
  end
end