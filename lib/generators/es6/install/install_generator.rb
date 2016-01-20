class Es6::InstallGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def require_module_loader
    prepend_file manifest, "//= require es6_module_loader\n"
  end

  def initialize_modules_on_ready
    append_file manifest, modules
  end

  private

  def modules
    File.read File.join(self.source_root, 'ready.js')
  end

  def manifest
    @manifest ||= 'app/assets/javascripts/application.js'
  end
end
