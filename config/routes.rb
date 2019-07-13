Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # vamos a asociar el método home a la ruta /home
  #get '/home', to: 'pages#home'
  #get 'pages/home'
  #get '/books', to: 'books#index'
  root 'books#index'

  resources :books #, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :authors, except: [:destroy]

  # nombrando rutas / El nombre se le da con la opción as como se muestra en el siguiente ejemplo:

  #get '/pages/home', to: 'pages#home', as: "home"
  #home_path # /pages/home
  #home_url  # http://localhost:3000/pages/home

  # Puedes usar el nombre de la ruta en vínculos así:
  # <a href="<%= home_path %>">Ir al Home</a>

  # Esta última es la forma en la que se recomienda hacer
  # vínculos internos en la aplicación.
  # <%= link_to "Ir al home", home_path %>
end
