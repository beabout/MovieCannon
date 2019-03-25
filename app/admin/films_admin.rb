Trestle.resource(:films) do
  menu do
    item :films, icon: "fa fa-film"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    column :description
    column :release_date do |t|
      t.format_releasedate
    end
    column :run_time do |t|
      t.format_runtime
    end
    column :genres do |film|
      film.genre_list
    end
    column :mpaa_rating
    actions
  end


  active_storage_fields do
    [:filmshot, :movie_poster, :trailer_url]
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |film|
    tab :details do
      text_field :title
      text_area :description
      datetime_field :release_date
      text_field :run_time
      select :mpaa_rating, Film::MPAARatings
      collection_select :genre_ids, Genre.all, :id, :name, {label: "Genres"}, { multiple: true }
      active_storage_field :filmshot
      active_storage_field :movie_poster
      # text_field :trailer_url
    end

    tab :people do
      table film.film_people, admin: :film_people do
        column :person
        column :person_type
      end
    end

    tab :classifications do
      table film.film_classifications, admin: :film_classifications do
        column :classification
        column :value
      end

      concat admin_link_to("New Classification", admin: :film_classifications, action: :new, params: { film_id: film}, class: "btn btn-success")
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
