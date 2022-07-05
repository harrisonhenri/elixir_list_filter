defmodule ListFilter do
  def call(list), do: run(list)

  defp run([]), do: 0

  defp run(list) do
    Enum.reduce(list, 0, fn item, acc ->
      parsed_value = case Integer.parse(item) do
        {value, ""} -> value
        _ -> nil
      end

      if parsed_value !=nil and rem(parsed_value, 2) != 0 do
        acc + 1
      else
        acc
      end
    end)
  end
end
