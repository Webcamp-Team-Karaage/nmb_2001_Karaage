class Genre < ApplicationRecord
    has_many :products, dependent: :destroy
    accepts_attachments_for :products, attachment: :product_image
    validates :name, presence: true
    validates :status,  inclusion: {in: [true, false]}
end
