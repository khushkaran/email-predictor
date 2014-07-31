class Predictor
  attr_reader :name
  attr_reader :domain

  def initialize(name=nil, domain=nil)
    @name = name
    @domain = domain
  end

  def dataset
    {
      "John Ferguson" => "john.ferguson@alphasights.com",
      "Damon Aw" => "damon.aw@alphasights.com",
      "Linda Li" => "linda.li@alphasights.com",
      "Larry Page" => "larry.p@google.com",
      "Sergey Brin" => "s.brin@google.com",
      "Steve Jobs" => "s.j@apple.com"
    }
  end

  def matches
    matches = Hash.new
    dataset.each{|name, email|
      matches[name] = email if email.to_domain == domain
    }
    matches
  end

  def email_prediction
    pattern = matches.map{|match|
      EmailPatternChecker.new(match[0], match[1]).pattern
    }.uniq
    return "Unable to make an accurate prediction" if pattern.count < 1
    email_gen = EmailGenerator.new(name,domain)
    email_gen.send(pattern[0].to_sym)
  end
end