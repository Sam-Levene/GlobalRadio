Feature: Accessing Capital FM website to check for certain artists

	As a user
	I want to access the Capital FM website
	So that I can see if Justin Bieber is currently playing or has recently been played.

	@Connect_Website @Scenario_01
	Scenario: Accessing Capital FM website
		Given I can access the Capital FM website
		Then I can see the homepage

	@Who's_Playing @Scenario_02
	Scenario: Is Justin Bieber currently playing?
		Given I am on the Capital FM homepage
		When I look at the Now Playing Module
		Then I can see "Justin Bieber" is currently playing

	@Recently_Played @Scenario_03
	Scenario: Has Justin Bieber recently played?
		Given I am on the Capital FM homepage
		When I look at the Now Playing Module
		And I look at who has recently played
		Then I can see "Justin Bieber" has recently played