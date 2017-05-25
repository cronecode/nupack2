module MarkupCalculator
  extend self

  def markup(price, workers, category)
    flat_markup = flat_markup(price)

    worker_markup = worker_markup(flat_markup, workers)
    category_markup = category_markup(flat_markup, category)

    round(flat_markup + worker_markup + category_markup)
  end

  def flat_markup(base_price)
    base_price * 1.05
  end

  def worker_markup(price, workers)
    new_price = (price * 0.012) * workers
    round(new_price)
  end

  def category_markup(price, category)
    case category
      when "pharmaceutical"
        round(price * 0.075)
      when "food"
        round(price * 0.13)
      when "electronics"
        round(price * 0.02)
      else
        price
    end
  end

  def round(price)
    (price * 100).round / 100.0
  end
end