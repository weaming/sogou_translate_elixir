defmodule SogouTranslate do
  alias HTTPoison.Response

  @endpoint "https://fanyi.sogou.com"

  def translate(text) do
    url = @endpoint <> "/reventondc/translate"
    body = "from=auto&text=#{text}"
    # IO.puts("curl -X POST #{url} -d '#{body}'")

    res = HTTPoison.post(url, body, [
      "Content-Type": "application/x-www-form-urlencoded"
    ])
    case res do
      {:ok, %{status_code: 200, body: body}} ->
        # IO.puts(body)
        Poison.decode!(body)
      {:error, %{reason: reason}} ->
        reason
    end
  end
end
