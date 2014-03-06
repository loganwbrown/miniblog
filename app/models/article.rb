class Article < ActiveRecord::Base
    belongs_to :author
    has_many :comments
    has_many :reviews

    validates :story, presence: true
    validates :heading, presence: true, uniqueness: true

end
