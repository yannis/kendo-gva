ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end

# ActiveAdmin.register User do
#   index do
#     column :first_name
#     column :last_name
#     column :email
#     column :club
#     column :dob
#     column :current_sign_in_at
#     column :last_sign_in_at
#     column :sign_in_count
#     actions
#   end

#   filter :email

#   form do |f|
#     f.inputs "Admin Details" do
#       f.input :email
#       f.input :password
#       f.input :password_confirmation
#     end
#     f.actions
#   end

#   action_item only: :show do
#     link_to "Receipt", receipt_admin_user_path(user)
#   end

#   member_action :receipt do
#     @user = User.find params[:id]
#     pdf = UserReceipt.new(@user)
#     send_data pdf.render, filename: @user.full_name.parameterize('_')+"_receipt",
#                           type: "application/pdf",
#                           disposition: "inline",
#                           page_size: 'A4'
#   end
# end
