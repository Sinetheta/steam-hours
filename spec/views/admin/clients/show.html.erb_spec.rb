require 'rails_helper'

RSpec.describe "admin/clients/show", :type => :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
