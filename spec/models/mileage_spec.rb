
require 'rails_helper'



RSpec.describe Mileage, :type => :model do
    
    subject {
        described_class.new(distance:200,
                            created_at: DateTime.now,
                            updated_at: DateTime.now + 1.week,
                            fleet_id: 1
                            user_id: 1)
      }
    it "is valid with valid attributes" do
        expect(subject).to be_valid
      end

      it "is not valid without a title" do
        subject.distance = nil
        expect(subject).to_not be_valid
      end
    
      it "is not valid without a start_date" do
        subject.created_at = nil
        expect(subject).to_not be_valid
      end
    
      it "is not valid without a end_date" do
        subject.updated_at = nil
        expect(subject).to_not be_valid
      end
  
end