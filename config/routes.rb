DownloadPages::Application.routes.draw do
  resources :majors do
    resources :dfiles do
      member do
        get 'down_file'
      end
    end
  end
  match "to_form" => "authentications#to_form"
  match "log_in" => "authentications#log_in"
  root :to => 'majors#index'
end
