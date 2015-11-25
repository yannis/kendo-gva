ActiveAdmin.register Teacher do
  permit_params :name, :grade, :active, :portrait, :portrait_cache


  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :grade
      f.input :active
    end
    f.inputs "Portrait", multipart: true do
      f.input :portrait, as: :file, hint: f.object.portrait.present? ? image_tag(f.object.portrait.url(:thumb)) : content_tag(:span, "no portrait yet")
      f.input :portrait_cache, as: :hidden
    end
    f.actions
  end
end
