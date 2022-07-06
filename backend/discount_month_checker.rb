class DiscountMonthChecker
  def self.is_discount_month?(month)
    month % 3 == 0
  end
end