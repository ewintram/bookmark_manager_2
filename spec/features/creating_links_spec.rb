feature "User can create a new bookmark"  do

  scenario "Submission form has a submit button" do
    visit('links/new')
    expect(page).to have_button('Submit')
  end

  scenario "User fills the form and submits" do
    new_link_with_social_tag
    expect(current_path).to eq "/links"
    within 'ul#links' do
      expect(page).to have_content('Facebook')
    end
  end

  scenario "user can add tags to boomarks in order to organise them" do
    visit('links/new')
    expect(page).to have_field "tag_name", type: "text"
    end

    scenario "User fills the form and submits" do
      new_link_with_tag_search_engine
      expect(current_path).to eq "/links"
      within 'ul#links' do
        expect(page).to have_content('search engine')
      end
    end


end
