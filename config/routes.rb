Rails.application.routes.draw do
	get 'books/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'books#root'

  resources:books
  resources:users,only:[:index, :edit, :update]
end
