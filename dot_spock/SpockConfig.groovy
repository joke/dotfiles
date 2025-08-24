mockMaker {
  preferredMockMaker spock.mock.MockMakers.mockito
}
runner {
  optimizeRunOrder true
  parallel {
    enabled true
  }
}