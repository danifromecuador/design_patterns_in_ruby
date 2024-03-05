# abstract class which has a template but their methods are
# override by their instance class
class Report
  def initialize
    @title = 'Main Title'
    @body = 'This is the message'
  end

  # this method won't be override
  def template
    header
    title
    body
    footer
  end

  # but all of these will be
  def header
    raise 'an error ocurred when calling header method'
  end

  def title
    raise 'an error ocurred when calling header method'
  end

  def body; end

  def footer; end
end

# in the instantiation class we are creating the methods that the template
# method is going to call
# if we need to create another structure for the report we can create another class
class WithHeader < Report
  # if want to raise an exception, name this method different
  def header
    p 'Daily News'
  end

  def title
    p @title
  end

  def body
    p @body
  end

  def footer; end
end

report_with_header = WithHeader.new
report_with_header.template

# if we want to call a raise we first need to modify the name of a method
# in the instantiation class so this way the template method can't find it
# and the exception will be raised

# begin
#   report_with_header.template
# rescue StandardError => e
#   p e.message
# end

# begin
#   report_with_header.template
# rescue
#   p "an error just happened, i'm sorry"
# end
