IO.puts File.open!("{your_path}/sample_code/alias.exs")
        |> IO.stream(:line)
        |> Enum.max_by(&String.length/1)
