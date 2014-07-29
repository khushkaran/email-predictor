class EmailGenerator
  def initialize(name, domain)
    @name, @domain = name, domain
  end

  def first_name_dot_last_name
    email = @name.downcase.split(" ").join(".")
    email += "@#{@domain}"
  end

  def first_name_dot_last_initial
    email = @name.downcase.split(" ")
    last_name = email.pop
    email.push(last_name[0])
    email = email.join(".")
    email += "@#{@domain}"
  end

  def first_initial_dot_last_name
    email = @name.downcase.split(" ")
    first_name = email.delete_at(0)
    email.insert(0, first_name[0])
    email = email.join(".")
    email += "@#{@domain}"
  end

  def first_initial_dot_last_initial
    
  end
end