Rails.application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    get 'welcome/index'
    resources :products
    resources :questions
    resources :experiences
    resources :about
    resources :contacts
    resources :welcome
    resources :faq
    resources :catalog
    root 'welcome#index'
    get  'home', to: 'welcome#index'
    get  'home/edit', to: redirect("welcome/index/edit"), as: 'home/edit'
    get '/:locale' => 'welcome#index'
  end

  match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), :via => [:get, :post]
  match '', to: redirect("/#{I18n.default_locale}/"), :via => [:get, :post]


  # scope ":locale" do
  #   resources :questions
  #   resources :experiences
  #   resources :experiences
  #   get 'welcome/index'

  #   # The priority is based upon order of creation: first created -> highest priority.
  #   # See how all your routes lay out with "rake routes".

  #   # You can have the root of your site routed with "root"
  #   resources :products
  #   resources :about
  #   resources :contacts
  #   resources :welcome
  #   resources :faq

  #   root 'welcome#index'


  #   get  'catalog', to: 'products#index'
  # end
  # Example of regular route:

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
