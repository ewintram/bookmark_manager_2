require_relative "../../app/app.rb"
require 'database_cleaner'

feature "User can see a list of links on the homepage" do

  it "should display a list of links" do
    Link.create(:link_name => "Google", :link_url => "http://www.google.com")
    visit("/links")
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end

end
