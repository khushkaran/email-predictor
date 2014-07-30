class EmailPatternChecker
  attr_reader :name
  attr_reader :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def pattern
    domain = email.to_domain
    generated_email = EmailGenerator.new(name, domain)
    return "first_name_dot_last_name" if email == generated_email.first_name_dot_last_name
    return "first_name_dot_last_initial" if email == generated_email.first_name_dot_last_initial
    return "first_initial_dot_last_name" if email == generated_email.first_initial_dot_last_name
    return "first_initial_dot_last_initial" if email == generated_email.first_initial_dot_last_initial
  end
end