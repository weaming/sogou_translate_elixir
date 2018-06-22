defmodule SogouTranslate.CLI do
  def red(text) do
    code = 31
    "\e[#{code}m#{text}\e[0m"
  end


  def green(text) do
    code = 32
    "\e[#{code}m#{text}\e[0m"
  end

  def main(_args) do
    text = _args |> Enum.at(0)
    js = SogouTranslate.translate(text)

    IO.puts "  #{green("From")}: #{js["translate"]["from"]}"
    IO.puts "    #{green("To")}: #{js["translate"]["to"]}"
    IO.puts "  #{green("Text")}: #{text}"
    IO.puts "#{green("Result")}: #{js["translate"]["dit"]}"
  end
end

