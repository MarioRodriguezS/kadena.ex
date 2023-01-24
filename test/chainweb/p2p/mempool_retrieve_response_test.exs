defmodule Kadena.Chainweb.P2P.MempoolRetrieveResponseTest do
  @moduledoc """
  `MempoolRetrieveResponse` struct definition tests.
  """

  use ExUnit.Case

  alias Kadena.Chainweb.P2P.MempoolRetrieveResponse
  alias Kadena.Test.Fixtures.Chainweb

  setup do
    hashes = [
      "bCBI9Z9RvNLoPX6J8UMwW3a09I6z9_IP7dN0NAGsFfw",
      "vArBe6MHlLzJjp3QC7vlincur9muOjX9tSTrHjon43M",
      "TUEEckWQHHCvdCtg9cwLRmpndhUN8apPle0NfPWMLIM",
      "XdZZj9uIDCQ3F8ojZioJlYU7vWCskmb3_r43X4dDUPU",
      "ndeArlCWEoarNaM_LA9MLjzB8w58iaDmmRPeejW3xDs",
      "n9ZOM0kR5siGLFtzw7UUcv29vPUxlZzfw-JvwDKzbxk",
      "WPUl824g04OfI8XvKWccqGk6rP1hYjf9wSYuf7yNbrU",
      "uaoMedrv27uUHJI2xzBy2u-4Kk_jy04WBuFk_eDVpEU",
      "mV6ohfmJYPEYKFYfcJH8j-aEgEiqdcze-qab2Nf4SLs",
      "CtAfH2tvBIFKXLoRQazUJGd1Mu0L2ED6rEdF-WMHdfQ",
      "ul3ZSjlLOtGCJrUzt4-Jceb71pm0rITvdhbfZkxx5Pk",
      "C385m6e9S7WzelUFCyW-JoZFJGQNlcI0jqCO8YrPMVo",
      "i5mAEmrcpP0PrHWubldicog9atWwq0-6IO9Nof0hFsk",
      "FLk5gjAAAnv1T7YIuRzUDJXiz4XAIDk_Xymn3-i0P1k",
      "RMHKxYF7xIH5hHeu1ZghvlLMS0TtXztEOjUATws0U7c",
      "lKQ3pUNhsk8XCUdNF7GJvgFqYD5ebFCdgat7KA5tpKA",
      "1N_bL1WLyxXaEJDUS9lZn9rp0jE-emwO7AWaLUBPZ6s",
      "NU6WHomGhEZ7unbZR08ll0-IDN2yEMJ60WqdPVrJ89U",
      "EdfVWyS5yDGdlPQu1SuwN4zvwrXPiMsjfXikFHO5Psg",
      "cVDbNODyPk38DgX5LotmXmiXuommel7K5zq10sTwwTA",
      "A2AN30N4yQS5RM_EZUwMXkLtZqWFrPkDE89qVk4QHKs",
      "Q1HMRaU95xNqq9NxViH9XzxStG2W32gRLCsOG3UIbBo",
      "o_mdmShUDKoqpOS7zFafDYYGzPXaRD8ydDGNKmqG9kk"
    ]

    highwater_mark = [-2_247_324_167_920_489_014, 70_266]

    %{
      attrs: Chainweb.fixture("mempool_retrieve_tx"),
      hashes: hashes,
      highwater_mark: highwater_mark
    }
  end

  test "new/1", %{
    attrs: attrs,
    hashes: hashes,
    highwater_mark: highwater_mark
  } do
    %MempoolRetrieveResponse{hashes: ^hashes, highwater_mark: ^highwater_mark} =
      MempoolRetrieveResponse.new(attrs)
  end
end
