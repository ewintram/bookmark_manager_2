feature 'Filter links by tag' do

  scenario 'find links on a special topic' do
    new_link_with_tag_search_engine
    new_link_with_social_tag
    new_link_with_photo_tag
    visit ('/tags/social')
    expect(page).to have_content("Facebook")
    expect(page).not_to have_content("Tumblr")
  end
end
