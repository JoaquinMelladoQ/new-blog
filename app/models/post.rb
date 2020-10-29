class Post < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true, length: { maximum: 140 }
    validates :author, presence: true
    validates :status, presence: true
    enum status: [:draft, :published]
end