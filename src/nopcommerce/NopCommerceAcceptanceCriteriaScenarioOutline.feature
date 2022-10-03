Feature: Book Category

Background: I should be able to see home page
 Given I enter URL "https://demo.nopcommerce.com/ in browser
 And I am on home page

Scenario Outline: I should be able to see top menu tabs on homepage with categories
  When I am homepage
  Then I should be able to see top menu tabs with "<categories>"
Examples:
|categories        |
|computer          |
|Electronic        |
|Apparel           |
|Digital downloads |
|Books             |
|jewellery         |
|Gift              |

Scenario Outline: I should be able to see book page with filters
  When I select category from top meu tabs on home page
  Then I should be navigated to book category
  And I should be able to see "<filters>"
Examples:
|filters  |
|Sort by  |
|Display  |
|Grid     |
|list     |

Scenario Outline: I should be able to see list of terms of each filter
  Given I am on book page
  When I click on "<filter>"
  Then I should be able to see "<list>" in drop menu
Examples:
|filter         | List                                                                          |
|Sort by        |Name: A to Z, Name, Z to A, Price: Low to High, Price: High to Low, Created on |
|Display        |3, 6, 9                                                                        |

Scenario Outline: I should be able to choose any filter option with specific result
  Given I am on book page
  When I click on "<filter>"
  And I click on any "<option>"
  Then I should be able to choose any filter option from the list
  And I should be able to see "<result>"
 Examples:
|filter   |option             |result                                                         |
|Sort by  |Name: A to Z       |sorted products with product name in alphabetical order A to Z |
|Sort by  |Name: Z to A       |sorted products with product name in alphabetical order Z to A |
|Sort by  |Price: Low to High |sorted products with product name price in descending order    |
|Sort by  |Price: High to Low |sorted products with product name price in ascending order     |
|Sort by  |Price: Created on  |recently added products should be shown first                  |
|Display  |3                  |3 products on a page                                           |
|Display  |6                  |6 products on a page                                           |
|Display  |9                  |9 products on a page                                           |

Scenario Outline: : I should be able to see product display format according to display format type as per picture in srs document
  Given I am on book page
  When I click on "<display format icon>"
  Then  I should be able to see product display format according to display format type as per picture in srs document
Examples:
|display format icon  |
|Grid                 |
|List                 |