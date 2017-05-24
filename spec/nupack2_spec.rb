require 'nupack2'

RSpec.describe MarkupCalculator do
  describe ".flat_markup" do
    it "increases the base price by 5%" do
      input = 100

      output = subject.flat_markup(input)
      
      expect(output).to eq(105)
    end
  end

  describe ".worker_markup" do
    it "adds 1.2% for every worker on the job" do
      price = 100
      workers = 1

      output = subject.worker_markup(price, workers)

      expect(output).to eq(101.2)
    end
  end
end