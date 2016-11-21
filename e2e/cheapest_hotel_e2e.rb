require_relative '../rspec/spec_helper'
require 'yaml'
describe "e2e test" do


    let(:input_1)  {InputProcess.new "Regular: 16Mar2009(mon), 17Mar2009(tues), 18Mar2009(wed)"}
    let(:input_2)  {InputProcess.new "Regular: 20Mar2009(fri), 21Mar2009(sat), 22Mar2009(sun)"}
    let(:input_3)  {InputProcess.new "Rewards: 26Mar2009(thur), 27Mar2009(fri), 28Mar2009(sat)"}

  it 'should return Lakewood' do
    hotelrates = HotelRates.new input_1.customer_type, input_1.dates
    # hotelrates.count_price_for_three_hotel('Regular: 16Mar2009(mon), 17Mar2009(tues), 18Mar2009(wed)')
    expect(hotelrates.the_cheapest_hotel_name).to eq 'Lakewood'
  end

  it 'which is Bridgewood' do
    hotelrates = HotelRates.new input_2.customer_type, input_2.dates
    expect(hotelrates.the_cheapest_hotel_name).to eq 'Bridgewood'
  end

  it 'which is Ridgewood' do
    hotelrates = HotelRates.new input_3.customer_type, input_3.dates
    expect(hotelrates.the_cheapest_hotel_name).to eq 'Ridgewood'
  end

end