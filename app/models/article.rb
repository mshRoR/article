class Article < ActiveRecord::Base
	has_many :comments, -> {order('created_at DESC')}, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5}
end
