Rails.application.routes.draw do
  resources :users
  resources :bills
  resources :customers
  resources :doctors
  resources :inventories
  resources :logs
  resources :notifications
  resources :order_items
  resources :orders
  resources :prescriptions
  resources :sale_items
  resources :sales

  # You can add additional routes or custom routes here

  root "sales#index" # Setting the root to the sales index action
end
