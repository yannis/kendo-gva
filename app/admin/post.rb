ActiveAdmin.register Post do
  permit_params :title, :content_md, :content_html, :draft, :user_id


   controller do
    defaults :finder => :find_by_slug
   end
end
