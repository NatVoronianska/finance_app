Rails.application.routes.draw do
  get 'reports/index'
  get 'reports/report_by_category'
  get 'reports/report_by_dates'
  get 'categories/operations'
  get 'reports/the_action/:some_param', to: 'report#report_by_category', prm: 'the_prm'
  get 'reports/the_action/:some_param', to: 'report#report_by_dates', prm: 'the_prm'

  resources :categories do
    resources :operations
  end
  root "main#index"
 
end
