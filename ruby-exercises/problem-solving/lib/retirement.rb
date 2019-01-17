class Retirement
  def calculate(current_age, retire_age)
    if current_age < 0 || retire_age < 0
      return "Error. Age cannot be negative."
    else
      "You have #{retire_age - current_age} years left until you can retire. It is 2015, so you can retire in #{2015 + retire_age - current_age}."

    end

  end
end
