class Pages::Capitalfmrecentartists < SitePrism::Page

	set_url "http://www.capitalfm.com/radio/last-played-songs/"
	set_url_matcher /capitalfm.com\/radio\/last-played-songs/

	def assertTitle
		if (page.title != "Last Played Songs - Radio - Capital")
			throw "Page title did not match expected value. Expected: Last Played Songs - Radio - Capital. Actual: #{page.title}"
		end
	end

	def getRecentArtist(myArtist)
		if (page.has_content?(myArtist) == false)
			puts "Justin Bieber has not recently played"
		else
			puts "Justin Bieber has recently played"
		end
	end

end