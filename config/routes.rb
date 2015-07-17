Rails.application.routes.draw do
  #get 'messages/index'

  get 'messages'              => 'messages#index',  :as => 'messages'
  get 'messages/show/:id'     => 'messages#show',   :as => 'show_message'

  get 'messages/new'          => 'messages#new',    :as => 'new_message'
  post 'messages'             => 'messages#create', :as => 'create_message'

  get 'messages/edit/:id'     => 'messages#edit',   :as => 'edit_message'
  patch 'messages/update/:id' => 'messages#update', :as => 'update_message'

  delete 'messages/delete/:id' => 'messages#delete',:as => 'delete_message'

end
