require "active_record/connection_adapters/sqlserver_adapter"
require "activerecord-import/active_record/connection_adapters/sqlserver/active_record"
require "activerecord-import/adapters/sqlserver_adapter"

class ActiveRecord::ConnectionAdapters::SqlserverAdapter
  include ActiveRecord::Import::SqlserverAdapter    
end

module ActiveRecord
  module Adapters
    module Sqlserver
      module CoreExt
        module ActiveRecord

          def self.included(base)
            base.send :include, InstanceMethods
          end
          
          module InstanceMethods
            
            def max_allowed_packet # :nodoc:
              65536.to_i
            end            
            
          end
        end
      end
    end
  end
end

ActiveRecord::ConnectionAdapters::AbstractAdapter.send :include, ActiveRecord::Adapters::Sqlserver::CoreExt::ActiveRecord