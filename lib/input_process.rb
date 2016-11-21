class InputProcess
  # attr_reader :cutomer_type, :dates
  def initialize input
    # require 'pry';binding.pry
    input_parse = split_input_by_colon input
    @customer_type = return_customer_type input_parse
    @dates = return_dates input_parse
  end

  def customer_type
    @customer_type
  end

  def dates
    @dates
  end

  def split_input_by_colon input
    input.split(':')
  end

  def return_customer_type input
    input[0]
  end

  def return_dates input
    dates=[]
    stay_time = input[1].split(',')
    stay_time.each do |day|
      temp = /\(\w{3,4}\)/.match day
      dates.push (/\w{3,4}/.match temp.to_s).to_s
    end
    dates
  end
end