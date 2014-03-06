class Comment < ActiveRecord::Base
    belongs_to :article

    validates :comments, presence: true
    
end
