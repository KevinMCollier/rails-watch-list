Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  get 'lists/index'
  get 'lists/show'
  get 'lists/create'
  get 'lists/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:index, :create, :new, :show] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]
end


# I can see all my movie lists                (lists#index)
# I can create a movie list                   (lists#create and lists#new)
# I can see the details of a movie list       (lists#show)
# I can bookmark a movie inside a movie list  (bookmarks#create and bookmarks#new)
# I can destroy a bookmark                    (bookmarks#destroy)

# R -> index
# C -> create
# C -> new
# U -> edit
# R -> show
# U -> update
# D -> destroy
