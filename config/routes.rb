Rails.application.routes.draw do
  get 'ingredients/:name', to: 'ingredients#index', as: :ingredients
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, shallow: true
  end
end
