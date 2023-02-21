Rails.application.routes.draw do
  get 'reports/index'
  get 'reports/report_by_category'
  get 'reports/report_by_dates'
  get 'main/index'
  get 'reports/the_action/:some_param', to: 'report#report_by_category', prm: 'the_prm'
  get 'reports/the_action/:some_param', to: 'report#report_by_dates', prm: 'the_prm'

  resources :operations
  resources :categories
  root "main#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
