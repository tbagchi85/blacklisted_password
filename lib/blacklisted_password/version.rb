module BlacklistedPassword
  VERSION = "0.0.1"
  BLACKLISTED_PASSWORD = Rails.root.join("config/blacklist_password.yml")
  def blacklist_password  #This is for blacklisting password
    if password.present?
      array = YAML.load_file(BLACKLISTED_PASSWORD).split(' ')
      email_element = email_spliting(email)
      array << email_element
      array.flatten!
      password_in_downcase = password.downcase
      @value = false
      array.each do |element|
        reg_string = "#{element}"
        reg = Regexp.new(reg_string)
        result = reg.match( password_in_downcase)
        if result
          @value ||= true
          break
        else
          @value ||= false
        end
      end
      errors.add :password, "is black listed." if @value
    end
  end

  def email_spliting(email) #This is for possible email splitting
    character_to_split = ['_','+','@','.']
    character_to_split.each do |char|
      email = email.split(char).join("^")
    end
    email.split('^')
  end
end
