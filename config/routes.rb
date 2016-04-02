Rails.application.routes.draw do
  resources :posts
  resources :events
  root  'root#index'
  get   'faq'   => 'root#faq'
  get   'rules' => 'root#rules'
  resources :participants
end
