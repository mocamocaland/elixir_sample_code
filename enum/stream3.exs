IO.puts File.stream!("{your_path}/sample_code/alias.exs") |> Enum.max_by(&String.length/1)
