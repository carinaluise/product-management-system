class Product < ApplicationRecord
    include Product::Notifications
    has_many :subscribers, dependent: :destroy
    has_one_attached :featured_image
    has_rich_text :description
    validates :name, presence: true
    validates :inventory_count, numericality: { greater_than_or_equal_to: 0, allow_nil: true }
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
