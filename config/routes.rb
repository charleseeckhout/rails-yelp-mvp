Rails.application.routes.draw do
resources :restaurants do
  resources :reviews,  only: [ :new, :create, :index, :show ]
  end
end


# Rails.application.routes.draw do
#   resources :restaurants do
#     resources :reviews, only: [ :index, :new, :create ]
#   end
#   resources :reviews, only: [ :show, :edit, :update, :destroy ]
# end
