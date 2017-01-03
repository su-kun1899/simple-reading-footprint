Rails.application.routes.draw do
  get 'book_cards/index'

  get 'book_cards/get'

  get 'book_cards/add'

  get 'book_cards/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
