ActiveAdmin.register User do
  permit_params :first_name, :last_name, :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions do |user|
      user.locked_at? ? (link_to 'unLock', unlock_admin_user_path(user.id), method: :put) : (link_to 'Lock', lock_admin_user_path(user.id), method: :put)
    end
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  # use for user locking 
  member_action :lock, method: :put do
    resource.lock_access!
    redirect_to admin_users_path, notice: "Locked User!"
  end

  # use for user unlocking 
  member_action :unlock, method: :put do
    resource.unlock_access!
    redirect_to admin_users_path, notice: "UnLocked User!"
  end
end
