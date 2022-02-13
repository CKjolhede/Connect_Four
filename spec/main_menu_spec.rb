require './lib/main_menu'
require 'rspec'
require 'pry'

RSpec.describe MainMenu do
  it "exists" do
    menu = MainMenu.new

    expect(menu).to be_an_instance_of(MainMenu)
  end
end
