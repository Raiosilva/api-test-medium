class User < ApplicationRecord
  belongs_to :profession, optional: true
  has_one :address
  # has_one :profession

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :profession


end
