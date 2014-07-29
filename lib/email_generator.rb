class EmailGenerator
  def initialize(name, domain)
    @name, @domain = name, domain
  end

  def first_name_dot_last_name
    email = @name.downcase.split(" ").join(".")
    email += "@#{@domain}"
  end

  def first_name_dot_last_initial
    
  end
end