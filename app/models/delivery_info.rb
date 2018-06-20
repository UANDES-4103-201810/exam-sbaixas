class DeliveryInfo < ApplicationRecord
  belongs_to :customer
  validates :address1, presence: true, allow_blank: false
  validates :address2, presence: true, allow_blank: false
  validates :phone, presence: true, allow_blank: false
  validates_numericality_of :phone, on: :create
end
