class Pages::Capitalfmhomepage < SitePrism::Page

	set_url "http://www.capitalfm.com/"
	set_url_matcher /capitalfm.com/

	def assertTitle
		if (page.title != "Capital - The No. 1 Hit Music Radio Station")
			throw "Page title did not match expected value. Expected: Capital - The No. 1 Hit Music Radio Station. Actual: #{page.title}"
		end
	end

	def getNowPlayingCard
		if (page.find(:xpath, "//*[@id=\"now_playing_wrapper\"]") == false)
			throw "I could not find the Now Playing card"
		end
	end

	def getCurrentArtist(myArtist)
		if (page.find(:xpath, "//*[@id=\"now_playing_wrapper\"]/div/article[1]/div/p/span[2]").has_text?("#{myArtist}") == false)
			puts "Justin Bieber is not currently playing"
		else
			puts "Justin Bieber is currently playing"
		end
	end

	def clickRecentPlayed
		if (page.find(:xpath, "//*[@id=\"now_playing_wrapper\"]/div/article[1]/a") == false)
			throw "I could not find the drop-down for recently played songs"
		else
			page.find(:xpath, "//*[@id=\"now_playing_wrapper\"]/div/article[1]/a").click
			click_link("Last Played Songs")
		end
	end

end