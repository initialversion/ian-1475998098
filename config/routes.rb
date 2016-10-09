Rails.application.routes.draw do
  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"
  #------------------------------

  # Routes for the Bin resource:
  # CREATE
  get "/bins/new", :controller => "bins", :action => "new"
  post "/create_bin", :controller => "bins", :action => "create"

  # READ
  get "/bins", :controller => "bins", :action => "index"
  get "/bins/:id", :controller => "bins", :action => "show"

  # UPDATE
  get "/bins/:id/edit", :controller => "bins", :action => "edit"
  post "/update_bin/:id", :controller => "bins", :action => "update"

  # DELETE
  get "/delete_bin/:id", :controller => "bins", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
