Trestle.resource(:reviews) do
  menu do
    item :reviews, icon: "fa fa-film"
  end

  table do
    column :film
    column :description
    column :rating do |t|
      t.formatted_rating
    end
    actions
  end

  form do |review|
    tab :details do
      text_area :description
      text_field :rating
    end
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
