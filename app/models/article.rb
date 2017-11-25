class Article < ApplicationRecord
	belongs_to :user
	has_many :comments , :dependent => :delete_all 
	validates :title, presence: true,
						length: {maximum: 50}
	validates :post, presence: true
end

