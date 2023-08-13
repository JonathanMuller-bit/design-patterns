class Reporter
  def initialize(format)
    @format = format
  end

  def report
    # Some code to generate report
    @format.output
  end
end

class Formater
  def output
    raise NotImplementedError, 'You must implement the output method'
  end
end

class HtmlFormater < Formater
  def output
    puts 'Html output'
  end
end

class JsonFormater < Formater
  def output
    puts 'Json output'
  end
end

reporter = Reporter.new(HtmlFormater.new)
reporter.report

reporter = Reporter.new(JsonFormater.new)
reporter.report

