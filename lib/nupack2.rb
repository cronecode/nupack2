module MarkupCalculator
  extend self

  def flat_markup(base_price)
    base_price * 1.05
  end

  def worker_markup(price, workers)
    new_price = (price * 1.012) * workers
    (new_price * 100).round(2) / 100
  end

  def category_markup(price, category)
    case category
      when "pharmaceutical"
        price * 1.075
      when "food"
        (price * 1.13 * 100).round(2) / 100
      when "electronics"
        price * 1.02
      else
        price
    end
  end
end