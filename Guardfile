# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'rspec', :cli => "--drb", :all_after_pass => false, :version => 2 do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/prawnto/(.+)\.rb$})     { |m| "spec/units/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end

