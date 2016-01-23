module Es6ModuleLoader
  # Rails plugin for the ES6 stuff.
  class Engine < ::Rails::Engine
    isolate_namespace Es6ModuleLoader

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
