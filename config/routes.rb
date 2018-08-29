Rails.application.routes.draw do

  devise_for :users
  get 'welcome/index'

  root 'welcome#index'

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth', controllers: {
      sessions: 'api/sessions',
      registrations: 'api/registrations',
      omniauth_callbacks: 'api/omniauth_callbacks'
    }
  end

  # mailbox folder routes
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash


  # conversations
  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end

end
