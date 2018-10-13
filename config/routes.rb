# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#              wheels_index GET    /wheels/index(.:format)                                                                  wheels#index
#              frames_index GET    /frames/index(.:format)                                                                  frames#index
#          user_bikes_index GET    /user_bikes/index(.:format)                                                              user_bikes#index
#          new_user_session GET    /users/sign_in(.:format)                                                                 devise/sessions#new
#              user_session POST   /users/sign_in(.:format)                                                                 devise/sessions#create
#      destroy_user_session DELETE /users/sign_out(.:format)                                                                devise/sessions#destroy
#         new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#        edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#             user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                           PUT    /users/password(.:format)                                                                devise/passwords#update
#                           POST   /users/password(.:format)                                                                devise/passwords#create
#  cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#     new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#    edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#         user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                           PUT    /users(.:format)                                                                         devise/registrations#update
#                           DELETE /users(.:format)                                                                         devise/registrations#destroy
#                           POST   /users(.:format)                                                                         devise/registrations#create
#                      root GET    /                                                                                        bikes#index
#                     bikes GET    /bikes(.:format)                                                                         bikes#index
#                           POST   /bikes(.:format)                                                                         bikes#create
#                  new_bike GET    /bikes/new(.:format)                                                                     bikes#new
#                 edit_bike GET    /bikes/:id/edit(.:format)                                                                bikes#edit
#                      bike GET    /bikes/:id(.:format)                                                                     bikes#show
#                           PATCH  /bikes/:id(.:format)                                                                     bikes#update
#                           PUT    /bikes/:id(.:format)                                                                     bikes#update
#                           DELETE /bikes/:id(.:format)                                                                     bikes#destroy
#                  addframe GET    /user_bikes/addframe(.:format)                                                           user_bikes#addframe
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  get 'wheels/index'
  get 'frames/index'
  get 'user_bikes/index'
  devise_for :users
  root 'bikes#index'
  resources :bikes
  get 'user_bikes/addframe', to: 'user_bikes#addframe', as: 'addframe'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
