DownloadPages::Application.routes.draw do
  resources :majors do
    resources :dfiles do
      member do
        get 'down_file'
      end
    end
  end
  root :to => 'majors#index'
end
