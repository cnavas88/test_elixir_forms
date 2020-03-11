defmodule TestForms.ExplicitContract.Twitter.Contract do
  @moduledoc """
  Explicit Contract for twitter.

  ** Testing the boundaries

  - Without Contract: [MyApp] -> [HTTP Client] -> [Twitter API]

  - With Contract: [MyApp] -> [MyApp.Twitter (contract)]
                   [MyApp.Twitter.HTTP (contract impl)] -> [HTTPClient] -> [Twitter API] 

  TODO OUR BOUNDARIES IN README
  Our application tests are now isolated from both the HTTPClient and the 
  Twitter API. However, how can we make sure the system actually works 
  as expected?

  Of the challenges in testing large systems is exactly in finding the proper boundaries. 
  Define too many boundaries and you have too many moving parts. Furthermore, 
  by writing tests that rely exclusively on mocks, your tests become less reliable.


  My general guideline is: for each test using a mock, you must have an integration test covering the usage of that mock. Without the integration test, there is no guarantee the system actually works when all pieces are put together. 

  By requiring the presence of integration tests, you can guarantee the different components work as expected when put together. 

  Therefore, in order to fully test our Twitter usage, we need at least two types of tests. Unit tests for MyApp.Twitter.HTTP and an integration test where MyApp.Twitter.HTTP  is used as an adapter.
  """
  
  @doc "..."
  @callback get_username(username :: String.t) :: map()

  def get_username(_) do
    raise "Ooops. Nos specific implementation for get_username contract."
  end
end