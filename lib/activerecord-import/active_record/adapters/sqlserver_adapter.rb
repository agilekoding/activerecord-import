require "active_record/connection_adapters/sqlserver_adapter"
require "activerecord-import/adapters/sqlserver_adapter"
require "activerecord-import/active_record/connection_adapters/sqlserver/active_record"

class ActiveRecord::ConnectionAdapters::SqlserverAdapter
  include ActiveRecord::Import::SqlserverAdapter
end
