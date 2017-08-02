ActiveAdmin.register ExtraExpense do
  permit_params :name, :amount
  index do
    selectable_column
    column :name
    column :amount
    column :user
    actions do |extra_expense|
      link_to 'Approve', status_update_admin_extra_expense_path(extra_expense)
    end
  end

  filter :name
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