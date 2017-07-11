Rails.application.routes.draw do
  namespace :api, :default => { :format => :json} do
    namespace :v1 do
      get "/students/:id" => "students#show", :as => :student
      get "/teachers" => "teachers#index", :as => :teachers
      delete "/teachers/:id" => "teachers#destroy", :as => :delete_teacher
    end
  end
end
