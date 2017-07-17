                  Prefix Verb   URI Pattern                     Controller#Action
              home_index GET    /home/index(.:format)           home#index
             users_index GET    /users/index(.:format)          users#index
              users_show GET    /users/show(.:format)           users#show
        new_user_session GET    /users/sign_in(.:format)        users/sessions#new
            user_session POST   /users/sign_in(.:format)        users/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)       users/sessions#destroy
       new_user_password GET    /users/password/new(.:format)   devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format)  devise/passwords#edit
           user_password PATCH  /users/password(.:format)       devise/passwords#update
                         PUT    /users/password(.:format)       devise/passwords#update
                         POST   /users/password(.:format)       devise/passwords#create
cancel_user_registration GET    /users/cancel(.:format)         users/registrations#cancel
   new_user_registration GET    /users/sign_up(.:format)        users/registrations#new
  edit_user_registration GET    /users/edit(.:format)           users/registrations#edit
       user_registration PATCH  /users(.:format)                users/registrations#update
                         PUT    /users(.:format)                users/registrations#update
                         DELETE /users(.:format)                users/registrations#destroy
                         POST   /users(.:format)                users/registrations#create
                  movies GET    /movies(.:format)               movies#index
                         POST   /movies(.:format)               movies#create
               new_movie GET    /movies/new(.:format)           movies#new
              edit_movie GET    /movies/:id/edit(.:format)      movies#edit
                   movie GET    /movies/:id(.:format)           movies#show
                         PATCH  /movies/:id(.:format)           movies#update
                         PUT    /movies/:id(.:format)           movies#update
                         DELETE /movies/:id(.:format)           movies#destroy
                 ratings GET    /ratings(.:format)              ratings#index
                         POST   /ratings(.:format)              ratings#create
              new_rating GET    /ratings/new(.:format)          ratings#new
             edit_rating GET    /ratings/:id/edit(.:format)     ratings#edit
                  rating GET    /ratings/:id(.:format)          ratings#show
                         PATCH  /ratings/:id(.:format)          ratings#update
                         PUT    /ratings/:id(.:format)          ratings#update
                         DELETE /ratings/:id(.:format)          ratings#destroy
             user_movies GET    /user_movies(.:format)          user_movies#index
                         POST   /user_movies(.:format)          user_movies#create
          new_user_movie GET    /user_movies/new(.:format)      user_movies#new
         edit_user_movie GET    /user_movies/:id/edit(.:format) user_movies#edit
              user_movie GET    /user_movies/:id(.:format)      user_movies#show
                         PATCH  /user_movies/:id(.:format)      user_movies#update
                         PUT    /user_movies/:id(.:format)      user_movies#update
                         DELETE /user_movies/:id(.:format)      user_movies#destroy
                    root GET    /                               home#index
