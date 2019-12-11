class Category < ApplicationRecord
    validates_presence_of :title, :content
    has_many :articles
end
