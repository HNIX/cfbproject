require 'rails_helper'

RSpec.describe "teams/index", type: :view do
  before(:each) do
    assign(:teams, [
      Team.create!(
        :name => "Name",
        :data_name => "Data Name"
      ),
      Team.create!(
        :name => "Name",
        :data_name => "Data Name"
      )
    ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Data Name".to_s, :count => 2
  end
end
