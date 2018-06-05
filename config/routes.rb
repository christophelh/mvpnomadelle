Rails.application.routes.draw do

 resources :pills do
    collection { post :import }
  end

root to:"pills#index"
end
