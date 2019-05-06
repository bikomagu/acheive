class Article < ApplicationRecord
    validates :description, presence: true
    validates :description, length: { in: 1..140 }
end
