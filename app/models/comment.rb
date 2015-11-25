class Comment < ActiveRecord::Base
  belongs_to :article
  validates :author, presence: true, length: { maximum: 140 }
  validates :body, presence: true, length: { maximum: 4000 }
end
