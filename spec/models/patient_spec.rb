require 'rails_helper'

RSpec.describe Patient, type: :model do
  before(:each) do
    @patient = Patient.new
    @patient.username = "valuedcustomer"
    @patient.password = "o9345ytG345yu!"
  end

  it "is valid with valid attributes" do
    @patient.should be_valid
  end

  it "is not valid without a username" do
    @patient.username = ""
    @patient.should_not be_valid
  end

  it "is not valid without a password" do
    @patient.password = ""
    @patient.should_not be_valid
  end

  it "is not valid with a username less than 8 characters in length" do
    @patient.username = @patient.username[0..6]
    @patient.should_not be_valid
  end

  it "is not valid with a password less than 8 characters in length" do
    @patient.password = @patient.password[0..6]
    @patient.should_not be_valid
  end

  it "is not valid with a password in the common password list" do
    @patient.password = "myspace1"
    @patient.should_not be_valid
  end

  it "is not valid with a password that is purely numeric" do
    @patient.password = "01189998819991197253"
    @patient.should_not be_valid
  end

  it "is not valid with special characters in the username" do
    @patient.username = "valued_customer"
    @patient.should_not be_valid
  end

  it "is not valid with a username that begins with a number" do
    @patient.username = "1valuedcustomer"
    @patient.should_not be_valid
  end

  it "is not valid with a username that is taken" do
    @patient.save
    @patient_b = Patient.new
    @patient_b.username = @patient.username
    @patient_b.password = @patient.password
    @patient_b.should_not be_valid
  end
end
