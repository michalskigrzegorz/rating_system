Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  get 'feedback/index'

  # get 'main_page/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'feedback#index'
end
