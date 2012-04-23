module UserProfile
  class Engine < ::Rails::Engine
    isolate_namespace UserProfile
    config.asset_path = "/my_blog_assets%s"
  end
end
