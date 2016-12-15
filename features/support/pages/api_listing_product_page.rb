class ApiListingProductPage

  class << self
    def has_image_info?(product_data)
      result = []

      product_data.fetch('results').each do |item|
        item.fetch('resources').each do |res|
          result << (res.fetch('path').include?('png') || res.fetch('path').include?('jpg'))
        end
      end

      result.all?
    end

    def has_average_rating_info?(product_data)
      result = []

      product_data.fetch('results').each do |item|
        result << !item.fetch('averageRating').nil? && item.fetch('averageRating').is_a?(Numeric)
      end

      result.all?
    end

    def has_delivery_type_info?(product_data)
      result = []

      product_data.fetch('results').each do |item|
        result << !item.fetch('deliveryType').nil? && item.fetch('deliveryType').is_a?(String)
      end

      result.all?
    end

    def has_delivery_time_info?(product_data)
      result = []

      product_data.fetch('results').each do |item|
        result << !item.fetch('deliveryTime').nil?
      end

      result.all?
    end

    def has_price_info?(product_data)
      result = []

      product_data.fetch('results').each do |item|
        result << !item.fetch('prices').fetch('regular').fetch('amount').nil?
      end

      result.all?
    end

    def has_feedbacks_info?(product_data)
      !product_data.fetch('ratings').fetch('feedbacks').nil?
    end
  end

end
