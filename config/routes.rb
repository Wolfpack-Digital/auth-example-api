# frozen_string_literal: true

Rails.application.routes.draw do
  use_doorkeeper
  mount Sidekiq::Web => '/sidekiq' # monitoring console
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
