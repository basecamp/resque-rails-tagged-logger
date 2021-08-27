require 'securerandom'
require 'benchmark'

module Resque
  module Plugins
    module RailsTaggedLogger
      mattr_accessor :tags
      self.tags ||= :resque
      def around_perform_rails_tagged_logger(*args, &block)
        Rackstash.with_tags(tags, name, uuid) do
          Rails.logger.info "  Parameters: #{args}"
          block.call
        end
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
