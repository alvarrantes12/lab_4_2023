require 'rails_helper'

RSpec.describe Product, type: :model do
  subject {
    described_class.new(name: "Product1",
                        price: 5.99)
  }

  describe 'validations' do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).not_to be_valid
    end

    it "is not valid without a price" do
      subject.price = nil
      expect(subject).not_to be_valid
    end
  end
end
