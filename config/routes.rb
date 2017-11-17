Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [ :new, :create ] # why is destroy not here?
  end
  resources :doses, only: :destroy
  # because when you create a cocktail doesnt mean create a new dose? So you can delete doses, leaving cocktail alone
end







