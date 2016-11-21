class HotelRates
  def initialize(customer_type, habitation_dates)
    @customer = customer_type
    @dates = habitation_dates
    @hotel_path = YAML.load_file('./lib/../config/hotel_price.yml')
  end

  def print_cheapest_hotel
    puts @cheapest_hotel_name
  end

  def the_cheapest_hotel_name
    hotel_prices = prices_for_three_hotel
    hotel_prices.keys.sort {|value_1, value_2| hotel_prices[value_1] <=> hotel_prices[value_2]}.first
  end

  def prices_for_three_hotel
    hotel_price = {"Lakewood"=>0, "Bridgewood"=>0, "Ridgewood"=>0}
    hotel_price.each_key do |key|
      hotel_price[key] = price_for_each_hotel key
    end
    hotel_price
  end

  private

  def price_for_each_hotel(hotel)
    total_price = 0
    @dates.each do |date|
      price = (date =~ /(sat|sun)/ ? @hotel_path[@customer]['weekend'][hotel] : @hotel_path[@customer]['weekday'][hotel])
      total_price += price
    end
    total_price
  end
end
