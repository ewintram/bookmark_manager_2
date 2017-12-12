require_relative "../../app.rb"

feature "User can see a list of links on the homepage" do

  it "should display a list of links" do
    visit("/")
    expect(page).to have_content("Here is the list of your bookmarks")
  end

end

feature "User can store the link in the database" do
  it "displays the saved link" do
    visit('/')
    find_link('Google').visible?
  end
end
