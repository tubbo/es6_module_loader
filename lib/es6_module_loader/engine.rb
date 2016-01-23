module Es6ModuleLoader
  class Engine < ::Rails::Engine
    isolate_namespace Es6ModuleLoader

    config.generators do
      g.test_framework :rspec
    end
  end
end
