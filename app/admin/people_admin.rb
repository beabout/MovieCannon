Trestle.resource(:people) do
  menu do
    item :people, icon: "fa fa-user"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :name
    column :birthdate
    # column :type_id
    actions
  end

  active_storage_fields do
    [:headshot]
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |person|
    text_field :name
    datetime_field :birthdate
    # text_field :type_id
    active_storage_field :headshot
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:person).permit(:name, ...)
  # end
end
