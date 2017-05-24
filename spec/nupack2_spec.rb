require 'nupack2'

RSpec.describe MarkupCalculator do
  describe ".flat_markup" do
    it "increases the base price by 5%" do
      price = 100

      output = subject.flat_markup(price)
      
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

  describe ".category_markup" do
    it "adds 7.5% to pharmaceutical products" do
      price = 100
      category = "pharmaceutical"

      output = subject.category_markup(price, category)

      expect(output).to eq(107.5)
    end

    it "adds 13% to food products" do
      price = 100
      category = "food"

      output = subject.category_markup(price, category)

      expect(output).to eq(113)
    end

    it "adds 2% to electronics" do
      price = 100
      category = "electronics"

      output = subject.category_markup(price, category)

      expect(output).to eq(102)
    end
  end

  describe ".markup" do
    it "calculates the final price after markup" do
      price = 100
      workers = 2
      category = "food"

      output = subject.markup(price, workers, category)

      expect(output).to eq(117.75)
    end
  end
end