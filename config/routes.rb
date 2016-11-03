Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :m_jurusans, :m_prodis, :m_nilais
  end
  # resources :m_jurusans
  # resources :m_prodis
  # resources :m_nilais
  root 'pages#dashboard'
end
