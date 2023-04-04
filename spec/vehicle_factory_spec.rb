require 'spec_helper'

RSpec.describe VehicleFactory do
  before(:each) do
    @factory = VehicleFactory.new
    @wa_ev_registrations = DmvDataService.new.wa_ev_registrations
  end
  describe '#initialize' do
    it'exits' do
      expect(@factory).to be_a(VehicleFactory)
    end
  end

  describe '#creates vehicled' do
    it 'creates vehicle objects' do
      @factory.create_vehicles(@wa_ev_registrations)
      expect(@factory.vehicles.first).to be_an_instance_of(Vehicle)

    end
  end
end