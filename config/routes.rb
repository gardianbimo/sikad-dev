Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :m_jurusans
  resources :m_prodis
  resources :m_nilais
  root 'pages#dashboard'
end
