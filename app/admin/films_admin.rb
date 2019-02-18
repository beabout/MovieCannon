Trestle.resource(:films, model: Film) do
  menu do
    item :films, icon: "fa fa-film"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    column :description
    column :release_date
    column :run_time
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |film|
    text_field :title
    text_field :description
    datetime_field :release_date
    text_field :run_time
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:film).permit(:name, ...)
  # end
end
