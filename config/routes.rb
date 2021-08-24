Rails.application.routes.draw do
  scope '/kemuning' do
    resources :events
    resources :tasks
    resources :positions
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


    root to: "pages#home"
  end
end
