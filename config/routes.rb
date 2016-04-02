Rails.application.routes.draw do
  resources :events
  root  'root#index'
  get   'faq'   => 'root#faq'
  get   'rules' => 'root#rules'
  get   'register' => 'events#register'
end
