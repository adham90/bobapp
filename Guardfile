# Guardfile
notification :tmux,
  display_message: true,
  timeout: 5, # in seconds
  default_message_format: '%s >> %s',
  # the first %s will show the title, the second the message
  # Alternately you can also configure *success_message_format*,
  # *pending_message_format*, *failed_message_format*
  line_separator: ' > ', # since we are single line we need a separator
  color_location: 'status-left-bg', # to customize which tmux element will change color

  # Other options:
  default_message_color: 'black',
  success: 'colour150',
  failure: 'colour174',
  pending: 'colour179',

  # Notify on all tmux clients
  display_on_all_clients: false


guard 'spork', :wait => 50 do
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.+\.rb})
  watch(%r{^config/initializers/.+\.rb})
  watch('spec/spec_helper.rb')
end

guard :rspec, cmd: 'bundle exec rspec' do
  watch('spec/spec_helper.rb')                        { "spec" }
  watch('config/routes.rb')                           { "spec/routing" }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml|\.slim)$})          { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^lib/(.+)\.rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
end

guard :bundler do
  require 'guard/bundler'
  require 'guard/bundler/verify'
  helper = Guard::Bundler::Verify.new
  files = ['Gemfile']
  files += Dir['*.gemspec'] if files.any? { |f| helper.uses_gemspec?(f) }
  # Assume files are symlinked from somewhere
  files.each { |file| watch(helper.real_path(file)) }
end

guard 'livereload' do
  watch(%r{app/.*/[^.][^/]+\.(erb|haml|slim)})
  watch(%r{app/helpers/.*/[^.][^/]+\.rb})
  watch(%r{public/(.*/[^.][^/]+\.(css|js|html))}) {|m| m[1] }
  watch(%r{app/assets/(.*/[^.][^/]+\.css)(\.s[ac]ss)?}) { |m| "/assets/#{m[1]}" }
  watch(%r{app/assets/(.*/[^.][^/]+\.js)(\.coffee)?}) { |m| "/assets/#{m[1]}" }
  watch(%r{config/locales/[^.].+\.yml})
end

#guard :spork, :cucumber_env => { 'RAILS_ENV' => 'test' }, :rspec_env => { 'RAILS_ENV' => 'test' } do
  #watch('config/application.rb')
  #watch('config/environment.rb')
  #watch('config/environments/test.rb')
  #watch(%r{^config/initializers/.+\.rb$})
  #watch('Gemfile.lock')
  #watch('spec/spec_helper.rb') { :rspec }
  #watch('test/test_helper.rb') { :test_unit }
  #watch(%r{features/support/}) { :cucumber }
#end
