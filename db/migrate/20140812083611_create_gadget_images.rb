class CreateGadgetImages < ActiveRecord::Migration
  def change
    create_table :gadget_images do |t|
      t.references :gadget, index: true
      t.string :image
    end
  end
end
