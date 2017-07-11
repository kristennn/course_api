Rails.application.routes.draw do
  namespace :api, :default => { :format => :json} do
    namespace :v1 do
      get "/students/:id" => "students#show", :as => :student
    end
  end
end
