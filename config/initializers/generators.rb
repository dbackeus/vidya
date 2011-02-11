Rails.application.config.generators do |g|
    g.test_framework :rspec, :fixture => false, :view_specs => false
    g.orm :mongoid
end
