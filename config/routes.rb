Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :office_expenses
  resources :fee_structures
  resources :student_fees
  resources :class_infos
  resources :students
  root 'class_infos#index'

  get 'get_allocated_fee', to: 'students#update_allocated_fee'
  get 'update_discount', to: 'students#update_discount'
  get 'print_receipt', to: 'students#print_receipt'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
