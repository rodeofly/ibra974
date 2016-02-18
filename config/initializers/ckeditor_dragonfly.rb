# Load Dragonfly if it isn't loaded already.
require "dragonfly"

Dragonfly.app(:ckeditor).configure do
  plugin :imagemagick
  secret "de2227ac15352b3e56d031587f0e6a6df933bcf4ca0c4bbc923b54e81317e1d8"

  # Store files in public/uploads/ckeditor. This is not
  # mandatory and the files don't even have to be stored under
  # public. See http://markevans.github.io/dragonfly/data-stores
  datastore :file,
    root_path: Rails.root.join("public", "uploads", "ckeditor", Rails.env).to_s,
    server_root: 'public'

  # Accept asset requests on /ckeditor_assets. Again, this path is
  # not mandatory. Just be sure to include :job somewhere.
  url_format "/uploads/ckeditor/:job/:basename.:format"
end

Rails.application.middleware.use Dragonfly::Middleware, :ckeditor
