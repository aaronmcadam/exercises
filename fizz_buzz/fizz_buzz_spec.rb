require "fizz_buzz"

describe FizzBuzz do
  describe "#call" do
    it "prints the number" do
      result = FizzBuzz.new(limit: 2).call

      expect(result).to contain_exactly(1, 2)
    end

    context "when the number is a multiple of 3" do
      it "prints 'Fizz'" do
        result = FizzBuzz.new(limit: 3).call

        output = result[2]
        expect(output).to eq("Fizz")
      end
    end

    context "when the number is a multiple of 5" do
      it "prints 'Buzz'" do
        result = FizzBuzz.new(limit: 5).call

        output = result[4]
        expect(output).to eq("Buzz")
      end
    end

    context "when the number is a multiple of both 3 and 5" do
      it "prints 'FizzBuzz'" do
        result = FizzBuzz.new(limit: 15).call

        output = result[14]
        expect(output).to eq("FizzBuzz")
      end
    end
  end
end
