Gem::Specification.new do |s|
  s.name      = 'resque-rails-tagged-logger'
  s.version   = '1.1.0'
  s.author    = 'Jeremy Kemper'
  s.email     = 'jeremy@bitsweat.net'
  s.homepage  = 'http://github.com/jeremy/resque-rails-tagged-logger'
  s.summary   = 'Tag Rails logs with [resque] [JobClassName] while processing jobs'

  s.files = Dir["#{File.dirname(__FILE__)}/**/*"]
end
