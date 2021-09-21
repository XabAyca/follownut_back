class Article < ApplicationRecord
    ## Validations
    validates :title, presence:true
    validates :content, presence:true
    
    ## Relations
    belongs_to :nutritionist
end
