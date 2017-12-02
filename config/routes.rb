Rails.application.routes.draw do

  get 'users/index'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'reports/index'

  devise_for :users, :path_prefix => 'dev'
  root 'main_files#index'
  resources :main_files, 
  :emp_references, 
  :family_ms, 
  :res_histories, 
  :spouses, 
  :emp_histories, 
  :spouses, 
  :clubs, 
  :educations, 
  :guard_ext_files, 
  :users

  # get 'emp_references/show'

  # get 'emp_references/new'

  # get 'emp_references/create'

  # get 'emp_references/edit'

  # get 'emp_references/update'

  # get 'emp_references/destroy'

  # get 'family_ms/show'

  # get 'family_ms/new'

  # get 'family_ms/create'

  # get 'family_ms/edit'

  # get 'family_ms/update'

  # get 'family_ms/destroy'

  # get 'res_historys/show'

  # get 'res_historys/new'

  # get 'res_historys/create'

  # get 'res_historys/edit'

  # get 'res_historys/update'

  # get 'res_historys/destroy'

  # get 'spouses/show'

  # get 'spouses/new'

  # get 'spouses/create'

  # get 'spouses/edit'

  # get 'spouses/update'

  # get 'spouses/destroy'

  # get 'emp_historys/show'

  # get 'emp_historys/new'

  # get 'emp_historys/create'

  # get 'emp_historys/edit'

  # get 'emp_historys/update'

  # get 'emp_historys/destroy'

  # get 'clubs/show'

  # get 'clubs/new'

  # get 'clubs/create'

  # get 'clubs/edit'

  # get 'clubs/update'

  # get 'clubs/destroy'

  # get 'educations/show'

  # get 'educations/new'

  # get 'educations/create'

  # get 'educations/edit'

  # get 'educations/update'

  # get 'educations/destroy'

  # get 'guard_ext_files/show'

  # get 'guard_ext_files/new'

  # get 'guard_ext_files/create'

  # get 'guard_ext_files/edit'

  # get 'guard_ext_files/update'

  # get 'guard_ext_files/destroy'

  # get 'main_files/index'

  # get 'main_files/show'

  # get 'main_files/new'

  # get 'main_files/create'

  # get 'main_files/edit'

  # get 'main_files/update'

  # get 'main_files/destroy'

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
