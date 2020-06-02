class Product < ApplicationRecord
    has_many :lineitems

    before_destroy :make_sure_no_line_items_in_any_cart

    validates(:name, :description, :image, presence: true)
    # validates(*names, other_param)
    validates :name, uniqueness: true   # so nothing has the same name
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :image, allow_blank: true, format: {with: /\.(gif|jpg|png)\Z/, message: 'Must be GIF, JPG, PNG images'}

    # instance method called upon a product object
    def make_sure_no_line_items_in_any_cart
        if self.lineitems.empty?
            return true
        else 
            errors.add(:base, "Line Items present")
            return false
        end
    end
end