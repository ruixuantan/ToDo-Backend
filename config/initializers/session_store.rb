if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_todo",
    domain: "todo-list-backend-rails.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_todo"
end
