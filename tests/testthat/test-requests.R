context("test-requests")

test_that("test get_resolve", {
  res <- get_resolve(identifier = 'ADD')
  expect_true(is.data.frame(res))
  expect_true(nrow(res) >= 1)

  res <- get_resolve(identifier = c('ADD', 'ATG7'))
  expect_true(is.data.frame(res))
  expect_true(nrow(res) >= 1)
})

test_that("test get_abstracts", {
  res <- get_abstracts(identifier = '4932.YML115C')
  expect_true(is.data.frame(res))
  expect_true(nrow(res) >= 1)

  res <- get_abstracts(identifier = c('4932.YML115C', '4932.YJR075W', '4932.YEL036C'))
  expect_true(is.data.frame(res))
  expect_true(nrow(res) >= 1)
})

test_that("test get_interactors", {
  res <- get_interactors(identifier = c('4932.YML115C', '4932.YJR075W', '4932.YEL036C'))
  expect_true(is.data.frame(res))
  expect_true(nrow(res) >= 1)
})
