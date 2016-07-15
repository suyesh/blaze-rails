module Blaze
  module Rails
    class Engine < ::Rails::Engine
      initializer 'blaze_rails.assests.precompile' do |app|
        %w(stylesheets).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end

        unless Sprockets::Rails::VERSION.split('.', 2)[0].to_i >= 3
          app.config.assets.precompile
        end
      end
    end
  end
end
