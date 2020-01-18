Rails.application.routes.draw do
	get 'books/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'root' => 'books#root'
  get 'books/:id/edit' => 'books#edit',as: 'edit_books'
  get 'books' => 'books#index'
  post 'books' => 'books#create'

  resources:books
  resources:users,only:[:index, :edit, :update]
end
