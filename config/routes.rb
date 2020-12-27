# frozen_string_literal: true

# == Route Map
#
#                                Prefix Verb   URI Pattern                                                                              Controller#Action
#                            courses GET    /courses(.:format)                                                                    courses#index
#                                       POST   /courses(.:format)                                                                    courses#create
#                         new_course GET    /courses/new(.:format)                                                                courses#new
#                        edit_course GET    /courses/:id/edit(.:format)                                                           courses#edit
#                             course GET    /courses/:id(.:format)                                                                courses#show
#                                       PATCH  /courses/:id(.:format)                                                                courses#update
#                                       PUT    /courses/:id(.:format)                                                                courses#update
#                                       DELETE /courses/:id(.:format)                                                                courses#destroy
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
  resources :subjects, :courses, :teachers, :schools
  resources :students
  resources :users
  root 'schools#index'
  # match '/', :to => 'schools#index', via: :get
  # match '/', to: 'home#index', via: :get
  #short get form
  # get 'users/new'
  # get 'users/create'
  namespace :admin do
    resources :schools
  end

  get '/search' => 'schools#search', as: 'search_page'
  get '/login' => 'sessions#login', as: 'login_page'
  post '/login' => 'sessions#login'

  get '/logout' => 'sessions#logout', as: 'logout_page'
  post "/logout", to: "sessions#logout"
  
  get 'password/forgot'
  get 'password/reset'

  post 'password/forgot'
  post 'password/reset'

  get '/users/info', to: 'users#info'

  #google authentication route
  get '/auth/:provider/callback', to: 'sessions#omniauth'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
