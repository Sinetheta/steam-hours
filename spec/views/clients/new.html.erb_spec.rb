require 'rails_helper'

RSpec.describe "clients/new", :type => :view do
  before(:each) do
    assign(:client, Client.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new client form" do
    render

    assert_select "form[action=?][method=?]", clients_path, "post" do

      assert_select "input#client_name[name=?]", "client[name]"

    end
  end
end
