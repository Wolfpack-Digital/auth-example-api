# frozen_string_literal: true

Rails.application.routes.draw do
  use_doorkeeper scope: 'api/v1/sessions' do
    skip_controllers :applications, :authorizations, :authorized_applications, :token_info
  end

  mount Sidekiq::Web => '/sidekiq' # monitoring console
  root 'home#index'

  namespace :api do
    namespace :v1 do
      resources :users, only: :create

      resources :sessions, only: %i[create index] do
        delete '/', action: :destroy, on: :collection
      end
    end
  end
end
