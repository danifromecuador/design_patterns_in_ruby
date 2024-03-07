class Report
  attr_reader :title, :text
  attr_accessor :formater

  def initialize(formater)
    @title = 'this is the title'
    @text = 'this is the text'
    @formater = formater
  end
end

class Formater
  def formater(_title, _text)
    raise 'the formater abstract method has been called'
  end
end

class PlainText < Formater
  def formater(title, text)
    p title
    p text
  end
end

r1 = Report.new(PlainText.new)
p r1.formater
