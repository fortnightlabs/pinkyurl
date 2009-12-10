# Be sure to restart your server when you modify this file.

# You can add backtrace silencers for libraries that you're using but don't wish to see in your backtraces.
Rails.backtrace_cleaner.add_silencer { |line| line =~ %r(sass/plugin/rails.rb) }

# You can also remove all the silencers if you're trying do debug a problem that might stem from framework code.
# Rails.backtrace_cleaner.remove_silencers!