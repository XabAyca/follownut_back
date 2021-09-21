require 'rails_helper'

RSpec.describe Article, type: :model do

  before (:all)do
    FactoryBot.create(:nutritionist)
    @article1 = FactoryBot.build(:article)
  end

  after (:all) do
    Nutritionist.destroy_all
    Article.destroy_all
  end

  it "is valid with valid attributes" do
    expect(@article1).to be_valid
  end

  it "is not valid without title" do
    article = FactoryBot.build(:article, title: nil)
    expect(article).to_not be_valid
  end

  it "is not valid without content" do
    article = FactoryBot.build(:article, content: nil)
    expect(article).to_not be_valid
  end
  
  it "is not valid without nutritionist_id" do
    article = FactoryBot.build(:article, nutritionist_id: nil)
    expect(article).to_not be_valid
  end

  it "is not valid with inexting nutritionist_id" do
    article = FactoryBot.build(:article, nutritionist_id: 999)
    expect(article).to_not be_valid
  end
  
end 

  