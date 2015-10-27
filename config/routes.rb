Rails.application.routes.draw do
  root 'homepage#index'

  post '/students' => 'students#register'
  post '/professionals' => 'professionals#register'
  post '/companies' => 'companies#register'
end
