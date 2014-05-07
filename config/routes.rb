Rails.application.routes.draw do
  
  devise_for :users

  # new root for static home page
  root to: 'sites#index'

  # mother static pages
  get '/about', to: 'sites#about'
  get '/contact', to: 'sites#contact'
  get '/privacy', to: 'sites#privacy'

  #user profile page
  get '/dashboard', to: 'dashboards#home'
  

  resources :chairs



 #                    Prefix Verb   URI Pattern                    Controller#Action
             # user_password POST   /users/password(.:format)      devise/passwords#create
         # new_user_password GET    /users/password/new(.:format)  devise/passwords#new
        # edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
                           # PATCH  /users/password(.:format)      devise/passwords#update
                           # PUT    /users/password(.:format)      devise/passwords#update
  # cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
         # user_registration POST   /users(.:format)               devise/registrations#create
     # new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
    # edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
                           # PATCH  /users(.:format)               devise/registrations#update
                           # PUT    /users(.:format)               devise/registrations#update
                           # DELETE /users(.:format)               devise/registrations#destroy
                      # root GET    /                              sites#index
                     # about GET    /about(.:format)               sites#about
                   # contact GET    /contact(.:format)             sites#contact
                   # privacy GET    /privacy(.:format)             sites#privacy
                    # chairs GET    /chairs(.:format)              chairs#index
                           # POST   /chairs(.:format)              chairs#create
                 # new_chair GET    /chairs/new(.:format)          chairs#new
                # edit_chair GET    /chairs/:id/edit(.:format)     chairs#edit
                     # chair GET    /chairs/:id(.:format)          chairs#show
                           # PATCH  /chairs/:id(.:format)          chairs#update
                           # PUT    /chairs/:id(.:format)          chairs#update
                           # DELETE /chairs/:id(.:format)          chairs#destroy            
  
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
