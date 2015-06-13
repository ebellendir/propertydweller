Rails.application.routes.draw do

   # This is a conditional route for devise.
   authenticated :user do
    root to: "tenancies#index", as: :authenticated_root
  end

  unauthenticated do
    root to: "sessions#index", as: :unathenticated_root
  end

  #Home page if you are not logged in
  get "/",  :controller => "sessions", :action => "index"

  # Routes for the Blog resource:
  # CREATE
  get "/blogs/new", :controller => "blogs", :action => "new"
  post "/create_blog", :controller => "blogs", :action => "create"

  # READ
  get "/blogs", :controller => "blogs", :action => "index"
  get "/blogs/:id", :controller => "blogs", :action => "show"

  # UPDATE
  get "/blogs/:id/edit", :controller => "blogs", :action => "edit"
  post "/update_blog/:id", :controller => "blogs", :action => "update"

  # DELETE
  get "/delete_blog/:id", :controller => "blogs", :action => "destroy"
  #------------------------------

  # Routes for the Tenancy resource:
  # CREATE
  post "/create_tenancy", :controller => "tenancies", :action => "create"

  # READ
  get "/tenancies", :controller => "tenancies", :action => "index"
  get "/tenancies/:id", :controller => "tenancies", :action => "show"

  # UPDATE
  post "/update_tenancy/:id", :controller => "tenancies", :action => "update"

  # DELETE
  get "/delete_tenancy/:id", :controller => "tenancies", :action => "destroy"
  #------------------------------

  # Routes for the Prop_type resource:
  # CREATE
  get "/prop_types/new", :controller => "prop_types", :action => "new"
  post "/create_prop_type", :controller => "prop_types", :action => "create"

  # READ
  get "/prop_types", :controller => "prop_types", :action => "index"
  get "/prop_types/:id", :controller => "prop_types", :action => "show"

  # UPDATE
  get "/prop_types/:id/edit", :controller => "prop_types", :action => "edit"
  post "/update_prop_type/:id", :controller => "prop_types", :action => "update"

  # DELETE
  get "/delete_prop_type/:id", :controller => "prop_types", :action => "destroy"
  #------------------------------

  # Routes for the Property resource:
  # CREATE
  get "/properties/new", :controller => "properties", :action => "new"
  post "/create_property", :controller => "properties", :action => "create"

  # READ
  get "/properties", :controller => "properties", :action => "index"

  # UPDATE
  get "/properties/:id/edit", :controller => "properties", :action => "edit"
  post "/update_property/:id", :controller => "properties", :action => "update"

  # DELETE
  get "/delete_property/:id", :controller => "properties", :action => "destroy"
  #------------------------------

  devise_for :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
