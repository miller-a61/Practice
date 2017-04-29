require 'stringio'
def silent_warnings
  old_stderr = $stderr
  $stderr = StringIO.new
  yield
ensure
  $stderr = old_stderr
end

silent_warnings do
# This file will trigger warnings
@foo                            # uninitialized variable
def bar;end
def bar;end                     # method redefinition
BAZ = 23
BAZ = 42 

end
