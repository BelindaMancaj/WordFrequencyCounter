defmodule WordFrequencyCounter do

  def countWords(file_path) do

    File.stream!(file_path)
    |> Stream.map(&String.downcase/1)
    |> Stream.flat_map(&String.split(&1, ~r{[^\w']+})) #If map is used, a list of lists is created
    |> Enum.reduce(%{}, fn word, acc -> Map.update(acc, word, 1, &(&1 + 1))end)

end
end
