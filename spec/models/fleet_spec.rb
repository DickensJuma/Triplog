
require 'rails_helper'



RSpec.describe Fleet, :type => :model do

    subject {
        described_class.new(title: "Anything",
                            id: 1,
                            created_at: DateTime.now,
                            updated_at: DateTime.now + 1.week,
                            user_id: 1)
      }
    it "is valid with valid attributes" do
        expect(subject).to be_valid
      end

      it "is not valid without a title" do
       
        expect(subject).to_not be_valid
      end
  
end