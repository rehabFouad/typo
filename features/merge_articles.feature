Feature: Merge Article
	As an admin
	In order to have articles with the same topic in one article
	I want to merge one article to another
	
	Background:
	Given the blog is set up
	And I am logged into the admin panel
	And the following articles exist:
	| title        | author  | type     | body 				    | user_id   | published |  published_at 	   | 
	| Article_1    | Mr Typo | Article  | This is article1 body | 1 		| true 		|  2013-11-21 12:44:00 | 
	| Article_2    | Mr Typo | Article  | This is article2 body | 1 		| true 		|  2013-11-21 12:44:00 | 
	And I go to the edit page for "Article_1"
	Then I should see "This is article1 body"