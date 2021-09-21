require 'faker'
require 'factory_bot_rails'

module ArticlesHelpers

  def create_articles
    FactoryBot.create(:article,
      title:"title",
      content:"blablabla",
      nutritionist_id:Nutritionist.all.sample.id,
    )
  end

  def build_articles
    FactoryBot.build(:article,
      title:"title",
      content:"blablabla",
      nutritionist_id:Nutritionist.all.sample.id,
    )
  end

end