ActiveAdmin.register Rent do
  permit_params :amount, :status
  index do
    selectable_column
    column :user
    column :amount
    column :status
    actions do |rent|
      link_to 'Approve', status_update_admin_rent_path(rent)
    end
  end

  filter :status
  filter :user

  form do |f|
    f.inputs "Admin Details" do
      f.input :status
      f.input :amount
      f.input :user
    end
    f.actions
  end
  
  member_action :status_update do
    resource.status = "approve"
    if resource.save
      redirect_to admin_rents_path, notice: "Approve amount!"
    end
  end

end