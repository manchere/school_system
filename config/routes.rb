# frozen_string_literal: true

# == Route Map
#
#                                Prefix Verb   URI Pattern                                                                              Controller#Action
#                            classrooms GET    /classrooms(.:format)                                                                    classrooms#index
#                                       POST   /classrooms(.:format)                                                                    classrooms#create
#                         new_classroom GET    /classrooms/new(.:format)                                                                classrooms#new
#                        edit_classroom GET    /classrooms/:id/edit(.:format)                                                           classrooms#edit
#                             classroom GET    /classrooms/:id(.:format)                                                                classrooms#show
#                                       PATCH  /classrooms/:id(.:format)                                                                classrooms#update
#                                       PUT    /classrooms/:id(.:format)                                                                classrooms#update
#                                       DELETE /classrooms/:id(.:format)                                                                classrooms#destroy
#                              students GET    /students(.:format)                                                                      students#index
#                                       POST   /students(.:format)                                                                      students#create
#                           new_student GET    /students/new(.:format)                                                                  students#new
#                          edit_student GET    /students/:id/edit(.:format)                                                             students#edit
#                               student GET    /students/:id(.:format)                                                                  students#show
#                                       PATCH  /students/:id(.:format)                                                                  students#update
#                                       PUT    /students/:id(.:format)                                                                  students#update
#                                       DELETE /students/:id(.:format)                                                                  students#destroy
#                             questions GET    /questions(.:format)                                                                     questions#index
#                                       POST   /questions(.:format)                                                                     questions#create
#                          new_question GET    /questions/new(.:format)                                                                 questions#new
#                         edit_question GET    /questions/:id/edit(.:format)                                                            questions#edit
#                              question GET    /questions/:id(.:format)                                                                 questions#show
#                                       PATCH  /questions/:id(.:format)                                                                 questions#update
#                                       PUT    /questions/:id(.:format)                                                                 questions#update
#                                       DELETE /questions/:id(.:format)                                                                 questions#destroy
#                                 users GET    /users(.:format)                                                                         users#index
#                                       POST   /users(.:format)                                                                         users#create
#                              new_user GET    /users/new(.:format)                                                                     users#new
#                             edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                                  user GET    /users/:id(.:format)                                                                     users#show
#                                       PATCH  /users/:id(.:format)                                                                     users#update
#                                       PUT    /users/:id(.:format)                                                                     users#update
#                                       DELETE /users/:id(.:format)                                                                     users#destroy
#                                       GET    /                                                                                        home#index
#                             users_new GET    /users/new(.:format)                                                                     users#new
#                          users_create GET    /users/create(.:format)                                                                  users#create
#                            home_index GET    /home/index(.:format)                                                                    home#index
#                            home_login GET    /home/login(.:format)                                                                    home#login
#                                       POST   /home/login(.:format)                                                                    home#login
#                                       GET    /:controller(/:action(/:id))(.:format)                                                   :controller#:action
#                          home_contact GET    /home/contact(.:format)                                                                  home#contact
#                            home_about GET    /home/about(.:format)                                                                    home#about
#         rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#   rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#health_check
#         rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#          rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#     new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                             rails/conductor/action_mailbox/inbound_emails#new
#    edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                        rails/conductor/action_mailbox/inbound_emails#edit
#         rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  get 'password/reset'
  get 'password/forgot'
  resources :subjects, :classrooms, :teachers, :schools
  resources :students
  resources :users
  root 'schools#index'
  # match '/', :to => 'schools#index', via: :get
  # match '/', to: 'home#index', via: :get
  #short get form
  # get 'users/new'
  # get 'users/create'
  namespace :admin do
    resources :users
  end

  get '/search' => 'schools#search', as: 'search_page'
  get '/login' => 'users#login', as: 'login_page'
  post '/login' => 'users#login'

  get 'users/logout'

  get 'password/forgot'
  get 'password/reset'

  post 'password/forgot'
  post 'password/reset'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
