feature "add multiple tags" do
  scenario "user can add multiple tags when creating a link" do
    new_link_with_multiple_tags
    link = Link.last
    expect(link.tags.map(&:tag_name)).to include('photo') and include('blog') and include('images')
  end
end
