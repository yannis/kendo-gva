# require 'spec_helper'

# describe User, type: :model do

#   it { should respond_to :first_name }
#   it { should respond_to :last_name }
#   it { should respond_to :email }
#   it { should respond_to :password }
#   it { should respond_to :admin }
#   it { should respond_to :full_name }

#   it { should validate_presence_of(:last_name) }
#   it { should validate_presence_of(:first_name) }
#   it { should validate_presence_of(:email) }
# end

# describe "A user" do
#   context "without last_name" do
#     it {expect{create :user, last_name: nil}.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Last name can't be blank")}
#   end

#   context "when a user with same first_name and last_name already exists" do
#     let!(:user){create :user, first_name: "Yannis", last_name: "Jaquet"}
#     it {expect{create :user, first_name: "Yannis", last_name: "Jaquet"}.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Last name has already been taken")}
#   end
# end
