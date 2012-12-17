Feature: Kindness factor calculation
	In order to know if a child has been kind
	As Santa 
	I want to calculate a kindness fator


Scenario: Mix of good and bad
	Given child with this record
	| Title                              | Kind | Force | Date       |
	| Helped GrandMa to cross the street | Good | 3     | 2012-01-21 |
	| Gave a moo box to a consultant     | Good | 1     | 2012-02-08 |
	| Set the dog on fire                | Bad  | 10    | 2012-08-17 |
	| But it was a poodle                | Good | 1     | 2012-08-17 |
	When I calculate his/her kindness factor for 2012
	Then the result should be -5

Scenario: Records spans two years
	Given child with this record
	| Title                      | Kind | Force | Date       |
	| Crashed Dad's car          | Bad  | 100   | 2011-12-24 |
	| Gave a candy to his sister | Good | 1     | 2012-12-24 |
	When I calculate his/her kindness factor for 2012
	Then the result should be 1
