module WikiClient
  class Engine < ::Rails::Engine
    isolate_namespace WikiClient

    initializer :wiki_client_helper do |app|
      ActiveSupport.on_load :action_controller do
        helper WikiClientHelper
      end
    end

  end
end
