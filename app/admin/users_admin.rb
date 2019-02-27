Trestle.resource(:users) do
  menu do
    item :users, icon: "fa fa-user-circle"
  end

  table do
    column :email
    column :admin
    actions
  end

  form do |user|
    select :admin, User::Bools
    #I assume there is an easier way to do this
  end

  # params do |params|
  #   params.require(:person).permit(:name, ...)
  # end
end
