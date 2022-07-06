class DiscountCalculator
  def self.calculate(months_subscribing)
    return 2 if months_subscribing < 24
    years = calculate_years(months_subscribing)
    years * 5
  end

  # private class methods

  def self.calculate_years(months_subscribing)
    case months_subscribing
      when 24..35
        2
      when 36..47
        3
      when 48..59
        4
      else
        5
      end
  end

   private_class_method :calculate_years
end