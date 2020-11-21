class PasswordStrength

  def check_length(password)
    if password.length >= 8
      true
    else
      false
    end
  end

  def check_contains_numbers(password)
    if password =~ /\d/
      true
    else
      false
    end
  end

  def check_contains_letters(password)
    if password.count("a-zA-Z") > 0
      true
    else
      false
    end
  end

  def evaluate_short_password(password)
    if check_contains_letters(password)
      "Weak"
    else
      "Very weak"
    end
  end

  def evaluate_long_password(password)
    if check_contains_letters(password) && check_contains_numbers(password)
      "Strong"
    else
      "Weak"
    end
  end 

  def answer (password)
    if !check_length(password)
      evaluate_short_password(password)
    else
      evaluate_long_password(password)
    end
  end
  
end