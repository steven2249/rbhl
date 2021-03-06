# tests for bhl_getcollection fxn in rbhl
context("bhl_getcollection")

test_that("bhl_collection returns the correct class", {
	skip_on_cran()

	tt <- bhl_getcollections()
	uu <- bhl_getcollections(as = 'json')

	expect_is(tt, "data.frame")

	expect_is(uu, "character")
	expect_is(jsonlite::fromJSON(uu), "list")
	expect_is(jsonlite::fromJSON(uu)$Result$CollectionName, "character")

  expect_equal(NCOL(tt), 5)
  expect_equal(length(uu), 1)
  expect_equal(length(jsonlite::fromJSON(uu)), 3)
})
