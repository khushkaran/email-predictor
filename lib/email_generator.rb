class EmailGenerator
  def first_name_dot_last_name(name, domain)
    email = name.downcase.split(" ").join(".")
    email += "@#{domain}"
  end
end