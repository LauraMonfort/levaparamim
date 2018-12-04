Rails.application.routes.draw do
  mount Facebook::Messenger::Server, at: 'webhooks/messenger'
end

# Rails.application.routes.draw do
#   root to: 'pages#home'

#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end
