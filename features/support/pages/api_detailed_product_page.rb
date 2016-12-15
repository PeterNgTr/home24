class ApiDetailedProductPage
  class << self
    def has_feedbacks_info?(product_data)
      !product_data.fetch('ratings').fetch('feedbacks').nil?
    end
  end

end
