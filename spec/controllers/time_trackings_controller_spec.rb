require 'rails_helper'
RSpec.describe TimeTrackingsController do
  let!(:time_tracking_valid_attributes) {
    {comment: 'asd', latitude: '123123', longitude: '345345', time: Time.now}
  }

  describe "GET index" do
    it "assigns @time_trackings" do
      time_tracking = TimeTracking.create!(time_tracking_valid_attributes)
      get :index
      expect(assigns(:time_trackings)).to eq([time_tracking])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
  # baseado em https://stackoverflow.com/a/10548902
  describe "POST create" do
    it "creates a new time_tracking with valid attributes" do
      expect { post :create, :time_tracking => time_tracking_valid_attributes }.to change(TimeTracking, :count).by(1)
    end

    it "does not create a new time tracking with invalid attributes" do
      expect { post :create, :time_tracking => {comment: 'asd'} }.to change(TimeTracking, :count).by(0)
    end
  end
end