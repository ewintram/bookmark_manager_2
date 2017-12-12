require 'spec_helper.rb'
require_relative '../lib/link.rb'

describe Link do
  it "shoul exist" do
    link = Link.create(:link_name => "Google", :link_url => "www.google.com" )
    expect(link).to be_an_instance_of(Link)
  end

end
