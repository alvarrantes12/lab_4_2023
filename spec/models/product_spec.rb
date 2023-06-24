require 'rails_helper'

RSpec.describe Product, type: :model do
  subject {
    described_class.new(name: "Pasta",
                        price: 500,
                        )
  }

  it "valid with valid attributes " do 
    expect(subject).to be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without price" do
    subject.price = nil
    expect(subject).to_not be_valid
  end
end
