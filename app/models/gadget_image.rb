class GadgetImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :gadget
 end
