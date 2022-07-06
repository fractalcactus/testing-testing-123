require_relative "../discount_calculator.rb"

RSpec.describe "DiscountCalculator" do
  describe "calculate" do
    context "months_subscribing is less than 2 years" do
      it "returns the correct discount" do
        months_subscribing = 23
        result = DiscountCalculator.calculate(months_subscribing)
        expect(result).to eq(2)
      end
    end

    context "months_subscribing is equal to 2 years" do
      it "returns the correct discount" do
        months_subscribing = 24
        result = DiscountCalculator.calculate(months_subscribing)
        expect(result).to eq(10)
      end
    end

    context "months_subscribing requires rounding down to the nearest year" do
      it "returns the correct discount" do
        months_subscribing = 37 # 36 months is 3 years
        result = DiscountCalculator.calculate(months_subscribing)
        expect(result).to eq(15)
      end
    end

    context "months_subscribing is greater than 5 years" do
      it "it has a maximum discount of 50" do
        months_subscribing = 100
        result = DiscountCalculator.calculate(months_subscribing)
        expect(result).to eq(25)
      end
    end
  end
end