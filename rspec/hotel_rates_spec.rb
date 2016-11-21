require_relative 'spec_helper'

describe HotelRates do
  before(:all) do
    let(:customer_type) {@hotelrates.return_customer_type("Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)")}
    @dates = @hotelrates.return_dates("Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)")
    @hotelrates = HotelRates.new dates
  end

  it "should return customer type" do
    result = 'Regular'
    expect(@customer_type).to eq result
  end

  it "should return customer date" do
    result = ['fri','sat','sun']
    expect(@dates).to eq result
  end

  it "should return total price of lakewood" do
    expect(@hotelrates.count_lakewood_price).to eq 290
  end

  it "should return total price of bridgewood" do
    expect(@hotelrates.count_bridgewood_price).to eq 280
  end

  it "should return total price of ridgewood" do
    expect(@hotelrates.count_ridgewood_price).to eq 520
  end

  xit "shoule return the cheapest hotel name" do
    @hotelrates.count_price_for_three_hotel("Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)")
    expect(@hotelrates.return_cheapest_hotel_name).to eq ('Bridgewood')
  end

end