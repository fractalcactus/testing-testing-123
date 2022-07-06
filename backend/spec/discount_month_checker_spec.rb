require_relative "../discount_month_checker.rb"

RSpec.describe "DiscountMonthChecker" do
  context "if the current month is January" do
     it "returns true" do
      month = 1
      result = DiscountMonthChecker.is_discount_month?(month)
      expect(result).to eq(false)
    end
  end

  context "if the current month is February" do
     it "returns true" do
      month = 2
      result = DiscountMonthChecker.is_discount_month?(month)
      expect(result).to eq(false)
    end
  end
  context "if the current month is March" do
     it "returns true" do
      month = 3
      result = DiscountMonthChecker.is_discount_month?(month)
      expect(result).to eq(true)
    end
  end
  context "if the current month is April" do
     it "returns true" do
      month = 4
      result = DiscountMonthChecker.is_discount_month?(month)
      expect(result).to eq(false)
    end
  end
  context "if the current month is May" do
     it "returns true" do
      month = 5
      result = DiscountMonthChecker.is_discount_month?(month)
      expect(result).to eq(false)
    end
  end
  context "if the current month is June" do
     it "returns true" do
      month = 6
      result = DiscountMonthChecker.is_discount_month?(month)
      expect(result).to eq(true)
    end
  end
  context "if the current month is July" do
     it "returns true" do
      month = 7
      result = DiscountMonthChecker.is_discount_month?(month)
      expect(result).to eq(false)
    end
  end
  context "if the current month is August" do
     it "returns true" do
      month = 8
      result = DiscountMonthChecker.is_discount_month?(month)
      expect(result).to eq(false)
    end
  end
  context "if the current month is September" do
     it "returns true" do
      month = 9
      result = DiscountMonthChecker.is_discount_month?(month)
      expect(result).to eq(true)
    end
  end
  context "if the current month is October" do
     it "returns true" do
      month = 10
      result = DiscountMonthChecker.is_discount_month?(month)
      expect(result).to eq(false)
    end
  end
  context "if the current month is November" do
     it "returns true" do
      month = 11
      result = DiscountMonthChecker.is_discount_month?(month)
      expect(result).to eq(false)
    end
  end
  context "if the current month is December" do
     it "returns true" do
      month = 12
      result = DiscountMonthChecker.is_discount_month?(month)
      expect(result).to eq(true)
    end
  end
end