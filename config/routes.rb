Rails.application.routes.draw do

 resources :pills do
    # collection { post :import }
  end

   resources :contraceptionpills do
    collection { post :import }
  end

root to:"pages#home"
get 'faq', to: 'pages#faq'
get 'termsconditions', to: 'pages#termsconditions'
end
