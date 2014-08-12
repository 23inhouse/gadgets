ActiveAdmin.register Gadget do
  permit_params :name, gadget_images_attributes: [:id, :image, :_destroy]

  form html: { enctype: 'multipart/form-data' } do |f|
    f.inputs do
      f.input :name
    end
    f.inputs do
      f.has_many :gadget_images, allow_destroy: true, heading: 'Images' do |images|
        images.input :image, as: :file, hint: images.template.image_tag(images.object.image.normal.url)
      end
    end
    f.actions
  end

  show do
    panel 'Gadget Details' do
      h3 [gadget.id, gadget.name].join(' - ')
      table_for gadget.gadget_images do
        column :id
        column { |gadget_image| image_tag(gadget_image.image.normal.url) }
      end
    end
  end
end
