# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :products, only: %i[index show]
    resource :user, only: [:create]
    resource :session, only: %i[create destroy]
  end

  root to: proc {
             [
               200,
               { 'Content-Type' => 'application/json' },
               [
                 {
                   service: 'storeapi',
                   version: StoreApi::REVISION.to_s.strip,
                   rails_environment: Rails.env
                 }.to_json
               ]
             ]
           }
end
