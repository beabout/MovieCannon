Trestle.resource(:classifications) do
  menu do
    item :classifications, icon: "fa fa-book"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :name
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |classification|
    text_field :name
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
