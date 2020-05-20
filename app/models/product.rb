class Product < ApplicationRecord
    validates(:name, :description, :image, presence: true)
    # validates(*names, other_param)
    validates :name, uniqueness: true   # so nothing has the same name
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :image, allow_blank: true, format: {with: /\.(gif|jpg|png)\Z/, message: 'Must be GIF, JPG, PNG images'}
end