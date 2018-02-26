Rails.application.routes.draw do
  # API
  namespace :api do
    namespace :v1 do
      resources :events
    end
  end
end
