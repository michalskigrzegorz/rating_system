Rails.application.routes.draw do
  #root 'feedback#index'
  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/contact'  

  get 'feedback/index'

  # get 'main_page/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
