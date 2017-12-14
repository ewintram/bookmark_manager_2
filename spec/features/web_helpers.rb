def new_link_with_tag_search_engine
  visit("links/new")
  fill_in "link_name", with: "Google"
  fill_in "link_url", with: "http://www.google.com"
  fill_in "tag_name", with: "search engine"
  click_button "Submit"
end

def new_link_with_photo_tag
  visit("links/new")
  fill_in "link_name", with: "Tumblr"
  fill_in "link_url", with: "http://www.tumblr.com"
  fill_in "tag_name", with: "photo"
  click_button "Submit"
end

def new_link_with_social_tag
  visit("links/new")
  fill_in "link_name", with: "Facebook"
  fill_in "link_url", with: "http://www.facebook.com"
  fill_in "tag_name", with: "social"
  click_button "Submit"
end

def new_link_with_multiple_tags
  visit("links/new")
  fill_in "link_name", with: "Tumblr"
  fill_in "link_url", with: "http://www.tumblr.com"
  fill_in "tag_name", with: "photo, blog, images"
  click_button "Submit"
end
