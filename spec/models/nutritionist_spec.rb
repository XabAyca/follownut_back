require 'rails_helper'

RSpec.describe Nutritionist, type: :model do
  it "is valid with valid attributes" do
    expect(create_nutritionist())
      .to be_valid
  end

  it "is not valid without content" do
    nutritionist2 = build(:nutritionist,content: nil)
    expect(nutritionist2).to_not be_valid
  end
end
