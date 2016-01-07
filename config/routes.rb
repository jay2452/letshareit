Rails.application.routes.draw do



  # get 'branches/:name', to: 'branches#show', as: 'branch_name'
  # resources 'branches'
  # get 'branches/:name/subjects/:subject_name', to: 'subjects#show', as: 'subject_show'

  resources :branches do
      resources :subjects

      member do
        get 'uploads'
        get 'links'
      end
  end

  resources :subjects, only: [:index]

  #resources :subjects
  # get 'feedbacks/index'

  # post 'team', => 'feedbacks#create'
  # get 'links/index'
  resources :feedbacks, except: [:new, :edit, :destroy, :update]
  # get 'links/show'

  get 'home_pages/upload_approval'
  get 'home_pages/link_approval'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'profile/' => 'profile#show', as: 'profile'

  get '/team' => 'home_pages#team', as: 'team'
  get '/search' => 'home_pages#search', as: 'search'


  resources :user_preferences
  resources :uploads, except: [:new]
  devise_for :users, :controllers => { :registrations => "registrations"}
  resources :links, except: [:new]
 # get 'home_pages/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home_pages#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
