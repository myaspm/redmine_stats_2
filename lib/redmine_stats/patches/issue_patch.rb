require_dependency 'issue'

module RedmineStats
  module Patches

    module IssuePatch
     
      def self.included(base) # :nodoc:
          base.send(:extend, ClassMethods)
          base.class_eval do    
            unloadable
          end
        end

        module ClassMethods
          def created_on(date)
            where(["#{Issue.table_name}.created_on >= ? AND created_on < ?", date, date + 1])
          end



          def closed_on(date)
            where(["#{Issue.table_name}.closed_on >= ? AND closed_on < ?", date, date + 1])
          end
          
        end
    
        module InstanceMethods
          
        end

        
   
    end
  end
end


unless Issue.included_modules.include?(RedmineStats::Patches::IssuePatch)
  Issue.send(:include, RedmineStats::Patches::IssuePatch)
end