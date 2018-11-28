describe MultiplePostcodesService do
  before(:all) do
    @postcodes_array = ['B601JA', 'SW155FB']
    @multiple_postcode_service = Postcodesio.new.multiple_postcode_service
    @multiple_postcode_service.get_multiple_postcode(@postcodes_array)
  end

  it "should respond with a status message of 200" do
    expect(@multiple_postcode_service.get_status_code).to eq 200
    # puts @single_postcode_service.print_results
  end

  # it "should have a results hash" do
  #   (0..@multiple_postcode_service.length).each do |i|
  #     # expect(@multiple_postcode_service.get_results(i)).to be_kind_of Hash
  #     puts @multiple_postcode_service.get_results(i)
  #   end
  # end


end
