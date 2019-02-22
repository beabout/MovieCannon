Trestle.resource(:film_classifications) do
  # menu do
  #   item :film_classifications, icon: "fa fa-video-camera"
  # end

  build_instance do |attrs, params|
    scope = params[:film_id] ? Film.find(params[:film_id]).film_classifications : FilmClassification
    scope.new(attrs)
  end

  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :film
  #   column :classification
  #   column :value
  #   actions
  # end
  #
  # # Customize the form fields shown on the new/edit views.
  # #
  form dialog: true do |film_classification|
    if film_classification.film
      hidden_field :film_id
    else
      select :film_id, Film.all
    end

    select :classification_id, Classification.all
    text_field :value
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
