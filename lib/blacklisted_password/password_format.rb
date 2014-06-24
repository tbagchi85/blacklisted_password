class BlacklistValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)  #This is for blacklisting password
    password = record.password
    email = record.email
    if password.present?
      array = YAML.load_file(BLACKLISTED_PASSWORD).split(' ')
      if record.class.column_names.include?('email')
        email_element = email_spliting(email)
        array << email_element
        array.flatten!
      end
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
      record.errors.add attribute, "is black listed." if @value
    end
  end

  def email_spliting(email) #This is for possible email splitting
    if email
      character_to_split = ['_','+','@','.']
      character_to_split.each do |char|
        email = email.split(char).join("^")
      end
      email.split('^')
    else
      []
    end
  end
end
