# tests for bhl_getauthorities fxn in rbhl
context("bhl_getauthorities")

library(XML)
library(RJSONIO)

tt <- bhl_getauthortitles(1970)
uu <- bhl_getauthortitles(1970, output='raw')
vv <- bhl_getauthortitles(1970, output='raw', format='xml')

test_that("bhl_getauthorities returns the correct class", {
	expect_is(tt, "list")
	expect_is(tt$Result, "list")
  
	expect_is(uu, "character")
	expect_is(fromJSON(uu), "list")
	expect_is(fromJSON(uu)$Result[[1]]$FullTitle, "character")
  
	expect_is(vv, "character")
	expect_is(xmlParse(vv), "XMLInternalDocument")
})

test_that("bhl_getauthorities returns the correct dimensions", {
  expect_equal(length(tt), 3)
  expect_equal(length(tt$Status), 1)
  expect_equal(length(uu), 1)
  expect_equal(length(fromJSON(uu)), 3)
  expect_equal(length(fromJSON(uu)$Result[[1]]), 21)
  expect_equal(length(xmlParse(vv)), 1)
})