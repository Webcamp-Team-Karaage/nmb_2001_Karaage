class Genre < ApplicationRecord
    has_many :products, dependent: :destroy
    accepts_attachments_for :products, attachment: :products_image
end
