Rails.application.routes.draw do

  get("/", { :controller => "user", :action => "home" })
  get("/users", { :controller => "user", :action => "all_users" })
  get("/users/:username", { :controller => "user", :action => "show" })
  post("/insert_user_record", { :controller => "user", :action => "create" })
  post("/update_user/:user_id", { :controller => "user", :action => "update" })

  get("/venues", { :controller => "venue", :action => "index" })
  post("/insert_venue_record", { :controller => "venue", :action => "create" })
  get("/venues/:venue_id", { :controller => "venue", :action => "show" })
  post("/update_venue/:the_id", { :controller => "venue", :action => "update" })
  get("/delete_venue/:venue_id", { :controller => "venue", :action => "destroy" })
  
  post("/insert_comment_record", { :controller => "comment", :action => "create" })
end
