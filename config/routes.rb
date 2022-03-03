Rails.application.routes.draw do
  devise_for :users, controllers: {
               sessions: 'users/sessions',
               omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :events
  resources :tasks do
    member do
      get :delete_attachment
      get :publish
    end
  end
  resources :positions do
    collection do
      get :publish_tasks
    end
    member do
      get :publish_task
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  match '/documents',    to: 'pages#documents',    via: 'get'
  root to: "pages#home"
end
