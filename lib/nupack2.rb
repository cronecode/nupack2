module MarkupCalculator
  extend self

  def flat_markup(base_price)
    base_price * 1.05
  end

  def worker_markup(price, workers)
    new_price = (price * 1.012) * workers
    round(new_price)
  end

  def category_markup(price, category)
    case category
      when "pharmaceutical"
        round(price * 1.075)
      when "food"
        round(price * 1.13)
      when "electronics"
        round(price * 1.02)
      else
        price
    end
  end

  def round(price)
    (price * 100).round(2) / 100
  end
end