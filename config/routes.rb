Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :flights
  resources :bookings do
    collection do
      get 'flight_book'
    end
  end
end
