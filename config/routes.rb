Spree::Core::Engine.routes.prepend do
  get '/admin', to: 'admin/root#index', as: :admin
end
