Rails.application.routes.draw do
root 'quizes#index'

  devise_for :users
  resources :users, :only => [:show]


  resources :quizes do
    resources :questions do
      resources :choices
    end
  end
  
  # get 'choices/create'

  # get 'choices/new'

  # get 'choices/show'

  # get 'choices/update'

  # get 'choices/destroy'

  # get 'questions/create'

  # get 'questions/new'

  # get 'questions/show'

  # get 'questions/edit'

  # get 'questions/update'

  # get 'questions/destroy'

  # get 'quizes/index'

  # get 'quizes/new'

  # get 'quizes/create'

  # get 'quizes/show'

  # get 'quizes/update'

  # get 'quizes/destroy'

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
