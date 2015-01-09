Rails.application.routes.draw do

  get '/'                             => 'pages#empty'
  get '/no_scratch'                   => 'pages#no_scratch'
  get '/scratch'                      => 'pages#scratch'
  get '/scratch_object'               => 'pages#scratch_object'
  get '/scratch_with_changed_object'  => 'pages#scratch_with_changed_object'
  get '/multiple_scratch_with_changed_object' \
                                      => 'pages#multiple_scratch_with_changed_object'
  get '/multiple_scratch'             => 'pages#multiple_scratch'
  get '/scratch_with_partial_scratch' => 'pages#scratch_with_partial_scratch'

end
