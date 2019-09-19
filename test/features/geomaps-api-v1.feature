Feature: Geomaps API (V1)

Scenario: Get Geomaps - Success
	Given I set x-apikey header to `apikey`
	When I GET /json?address=`address`
	Then response code should be 200
	And response body should be valid json

Scenario: Get Geomaps - Unauthorized
	When I GET /json
	Then response code should be 401
	And response body should be valid json
