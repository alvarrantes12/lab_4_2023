require 'rails_helper'

RSpec.describe Product, type: :model do
  subject {
    described_class.new(name: "Spr",
                        price: 2000,
                         )
    }
  
    it "validate isnt empty" do
      expect(subject).to be_valid
    end
  
    it "it validates isnt valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  
    it "it validates isnt valid without price" do
      subject.price = nil
      expect(subject).to_not be_valid
    end
  
    it "it validates it is a name with less than 3 letters characters" do
      subject.name = "dj"
      expect(subject).to_not be_valid
    end
  end
  
