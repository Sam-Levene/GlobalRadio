Given(/^I can access the Capital FM website$/) do
	@capital_fm_website = Captialfmwebsite.new
	@capital_fm_website.capital_fm_homepage.load
end

Then(/^I can see the homepage$/) do
	@capital_fm_website.capital_fm_homepage.assertTitle
end

Given(/^I am on the Capital FM homepage$/) do
	@capital_fm_website = Captialfmwebsite.new
	@capital_fm_website.capital_fm_homepage.load
	@capital_fm_website.capital_fm_homepage.assertTitle
end

When(/^I look at the Now Playing Module$/) do
	@capital_fm_website.capital_fm_homepage.getNowPlayingCard
end

Then(/^I can see "([^"]*)" is currently playing$/) do |myArtist|
  @capital_fm_website.capital_fm_homepage.getCurrentArtist(myArtist)
end

When(/^I look at who has recently played$/) do
	@capital_fm_website.capital_fm_homepage.clickRecentPlayed
end

Then(/^I can see "([^"]*)" has recently played$/) do |myArtist|
	@capital_fm_website.capital_fm_recent_artists.assertTitle
	@capital_fm_website.capital_fm_recent_artists.getRecentArtist(myArtist)
end
