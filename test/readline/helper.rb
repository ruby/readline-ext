begin
  require 'envutil'
rescue LoadError
end

begin
  require "readline.so"
  ReadlineSo = Readline
rescue LoadError
end

def use_ext_readline # Use ext/readline as Readline
  Object.send(:remove_const, :Readline) if Object.const_defined?(:Readline)
  Object.const_set(:Readline, ReadlineSo)
end
