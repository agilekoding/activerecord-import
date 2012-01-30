class ActiveRecord::Base
  class << self
    
    def supports_import?
      true
    end

  end
end
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
