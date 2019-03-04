Trestle.resource(:film_people) do

  build_instance do |attrs, params|
    scope = params[:film_id] ? Film.find(params[:film_id]).film_people : FilmPerson
    scope.new(attrs)
  end

  menu do
    item :film_people, icon: "fa fa-vcard"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    # column :film_id
    column :person
    column :person_type
    actions
  end
  #
  # # Customize the form fields shown on the new/edit views.
  # #

  form dialog: true do |film_person|
    if film_person.film
      hidden_field :film_id
    else
      select :film_id, Film.all
    end

    select :person_id, Person.all
    select :person_type_id, PersonType.all
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
