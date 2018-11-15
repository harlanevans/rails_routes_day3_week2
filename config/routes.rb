Rails.application.routes.draw do
  root "animals#index"
  
  resources :animals do
    resources :toys
  end
end
