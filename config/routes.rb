Rails.application.routes.draw do
  scope '/kemuning' do
    resources :events
    resources :tasks do
      collection do
        get :publish_tasks
      end
    end
    resources :positions
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    match '/documents',    to: 'pages#documents',    via: 'get'
    root to: "pages#home"
  end
end
