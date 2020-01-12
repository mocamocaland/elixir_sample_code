IO.puts File.read!("{your_path}/sample_code/alias.exs")
        |> String.split
        |> Enum.max_by(&String.length/1)
