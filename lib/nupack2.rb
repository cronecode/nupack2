module MarkupCalculator
  extend self

  def flat_markup(base_price)
    base_price * 1.05
  end

  def worker_markup(price, workers)
    new_price = (price * 1.012) * workers
    (new_price * 100).round(2) / 100
  end
end