require 'nupack2'

RSpec.describe MarkupCalculator do
  describe ".flat_markup" do
    it "increases the base price by 5%" do
      input = 100

      output = subject.flat_markup(input)
      
      expect(output).to eq(105)
    end
  end
end