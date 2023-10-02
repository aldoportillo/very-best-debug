Rails.application.routes.draw do

  get("/", { :controller => "user", :action => "home" })
  get("/users", { :controller => "user", :action => "all_users" })
  get("/users/:username", { :controller => "user", :action => "show" })
  post("/insert_user_record", { :controller => "user", :action => "create" })
  post("/update_users/:user_id", { :controller => "user", :action => "update" })

  get("/venues", { :controller => "venue", :action => "index" })
  post("/insert_venue_record", { :controller => "venues", :action => "create" })
  get("/venues/:venue_id", { :controller => "venue", :action => "show" })
  post("/update_venue/:the_id", { :controller => "venue", :action => "update" })
  get("/delete_venue/:id_to_delete", { :controller => "venue", :action => "destroy" })
  
  post("/insert_comment_record", { :controller => "comments", :action => "create" })
end
