class String
  def to_domain
    self.gsub(/.+@([^.]+)/, '\1')
  end
end