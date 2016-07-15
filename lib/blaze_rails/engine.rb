module BlazeRails
  module Rails
    class Engine < ::Rails::Engine
      initializer 'blaze-gem.assests.precompile' do |app|
        %w(stylesheets).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end
