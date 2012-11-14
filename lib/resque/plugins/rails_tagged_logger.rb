module Resque
  module Plugins
    module RailsTaggedLogger
      mattr_accessor :tags
      self.tags ||= :resque
      def around_perform_rails_tagged_logger(*args, &block)
        Rails.logger.tagged tags, name, &block
      end
    end
  end
end
