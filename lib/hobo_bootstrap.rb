module HoboBootstrap

  VERSION = File.read(File.expand_path('../../VERSION', __FILE__)).strip
  @@root = Pathname.new File.expand_path('../..', __FILE__)
  def self.root; @@root; end

  EDIT_LINK_BASE = "https://github.com/iox/hobo/edit/bootstrap_template/hobo_bootstrap"

  require 'hobo_bootstrap/railtie' if defined?(Rails)

  class Engine < ::Rails::Engine
  end
end
