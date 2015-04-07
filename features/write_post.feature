Feature: Write blog
As a blog owner
I can write new blog post
  Scenario: Write blog
   Given I am on the blog homepage
   When I click "New Post" link
   And I fill "My first blog" as Title
   And I fill "Test content" as content
   And I click "Post" button
   Then I should see the blog I just posted


Feature: Show blog list
 As a blog visitor
 I can see list of posted blogs
 Scenario: Show blog list
  #Given there are already 4 posts
  Given 4 post exist
  And I am on the blog homepage
  Then I can see list of 4 posted blogs


Feature: Input comment
 As a blog visitor
 I can input comment onto blog
 Scenario: Input comment
  Given there is a post titled with "Dummy post" and content with "Dummy content"
  And I am on the post page
  When I add a comment with the following information
  | Name   | Email      | Content   |
  | Al | admin@al.com | Test comment |
  Then I can see the comment has been added onto the post