Rails.application.routes.draw do

  mount Es6ModuleLoader::Engine => "/es6_module_loader"
end
