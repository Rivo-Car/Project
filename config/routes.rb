Rails.application.routes.draw do
  get 'patient/list'
  get 'patient/new'
  post 'patient/create'
  patch 'patient/update'
  get 'patient/list'
  get 'patient/show'
  get 'patient/edit'
  get 'patient/delete'
  get 'patient/update'
  get 'doctor/list'
  get 'doctor/new'
  post 'doctor/create'
  patch 'doctor/update'
  get 'doctor/list'
  get 'doctor/show'
  get 'doctor/edit'
  get 'doctor/delete'
  get 'doctor/update'
  get 'admin/list'
  get 'admin/new'
  post 'admin/create'
  patch 'admin/update'
  get 'admin/list'
  get 'admin/show'
  get 'admin/edit'
  get 'admin/delete'
  get 'admin/update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
