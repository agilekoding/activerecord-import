class ActiveRecord::Base
  class << self
    
    def supports_import?
      true
    end

  end
end


# ActiveRecord::ConnectionAdapters::SqlserverAdapter.class_eval do
#   # Returns the maximum number of bytes that the server will allow
#   # in a single packet
#   def max_allowed_packet # :nodoc:
#     65536.to_i
#   end
#   
# end

# module ActiveRecord
#   module Adapters
#     module Sqlserver
#       module CoreExt
#         module ActiveRecord
#           
#           extend ActiveSupport::Concern
#           
#           module ClassMethods
#             
#             def supports_import?
#               true
#             end
#             
#           end
#           
#         end
#       end
#     end
#   end
# end            
#         
# ActiveRecord::Base.extend ActiveRecord::Adapters::Sqlserver::CoreExt::ActiveRecord
