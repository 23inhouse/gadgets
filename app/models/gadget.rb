class Gadget < ActiveRecord::Base
  has_many :gadget_images, dependent: :destroy

  accepts_nested_attributes_for :gadget_images, allow_destroy: true
end
