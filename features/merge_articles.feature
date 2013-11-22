Feature: Merge Article
	As an admin
	In order to have articles with the same topic in one article
	I want to merge one article to another
	
	Background:
	Given the blog is set up
	And I am logged into the admin panel
	And the following articles exist:
	| id | title        | author  | type     | body 				 | user_id  | published |  published_at 	   | 
	| 10 | Article_1    | Mr Typo | Article  | This is article1 body | 1 		| true 		|  2013-11-21 12:44:00 | 
	| 11 | Article_2    | Mr Typo | Article  | This is article2 body | 1 		| true 		|  2013-11-21 12:44:00 | 
	
	Scenario: Successfully merge two articles
	Given I am on the edit page for "Article_1"
	Then I should see "This is article1 body"
	When I fill in "article_id" with "11"
	And I press "Merge"