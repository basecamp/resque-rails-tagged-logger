require 'securerandom'

module Resque
  module Plugins
    module RailsTaggedLogger
      mattr_accessor :tags
      self.tags ||= :resque
      def around_perform_rails_tagged_logger(*args, &block)
        Rails.logger.tagged tags, name, uuid, &block
      end

      def uuid
        if defined?(SecureRandom.uuid)
          SecureRandom.uuid
        else
          SecureRandom.hex(18)
        end
      end
    
    end
  end
end
