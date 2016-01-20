require 'spec_helper'

module Es6ModuleLoader
  RSpec.describe InstallGenerator, type: :generator do
    let :manifest do
      'app/assets/javascripts/application.js'
    end

    let :loader do
      "//= require es6_module_loader\n"
    end

    it 'prepends manifest with loader javascript' do
      expect(subject).to prepend_file(manifest).with(loader)
    end
  end
end
