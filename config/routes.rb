Rails.application.routes.draw do
  get 'book_cards/index'
  get 'book_cards', to: 'book_cards#index'

  get 'book_cards/add'
  post 'book_cards/create'

  get 'book_cards/:id', to: 'book_cards#detail'

  get 'book_cards/edit/:id', to: 'book_cards#edit'
  patch 'book_cards/edit/:id', to: 'book_cards#update'

  get 'book_cards/delete/:id', to: 'book_cards#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
