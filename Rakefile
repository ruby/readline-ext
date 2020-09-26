require "bundler/gem_tasks"
require "rake/testtask"
require "rake/extensiontask"
require "fileutils"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/test_*.rb"]
end

Rake::ExtensionTask.new("readline")

task :default => [:compile, :test]

task :build => :make_gem_depend

task :make_gem_depend do
  FileUtils.copy_file("ext/readline/depend-gem", "ext/readline/depend")
end
