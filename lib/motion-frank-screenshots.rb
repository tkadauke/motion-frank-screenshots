unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

lib_dir_path = File.dirname(File.expand_path(__FILE__))
Motion::Project::App.setup do |app|
  app.files.unshift(Dir.glob(File.join(lib_dir_path, "motion-frank-screenshots/**/*.rb")))
end

namespace 'frank' do
  desc "Create first feature files"
  task :init_screenshots do
    target_dir = File.join(Rake.application.original_dir, 'features', 'step_definitions')
    FileUtils.cp_r(File.join(lib_dir_path, 'steps', 'screenshot_steps.rb'), target_dir)
    FileUtils.mkdir_p(File.join(Rake.application.original_dir, 'screenshots'))
    File.open(File.join(Rake.application.original_dir, 'screenshots', '.gitignore'), 'w') { |file| file.puts '*.png' }
  end
end
