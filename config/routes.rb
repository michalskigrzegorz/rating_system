Rails.application.routes.draw do
  #root 'feedback#index'
  root 'static_pages#home'

  get 'home', to: "static_pages#home"
  get '/feedback', to: "feedback#index"
  get 'help', to: 'static_pages#help'
  get 'contact', to: 'static_pages#contact'  

  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'

  # get 'main_page/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
