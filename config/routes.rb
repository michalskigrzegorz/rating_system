Rails.application.routes.draw do
  get 'MainPage/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'MainPage/index'
end
