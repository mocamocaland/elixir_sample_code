defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do
  defstruct owner: %Customer{}, details: "", severity: 1
end


# iex(1)> report = %BugReport{owner: %Customer{name: "Dave", company: "Pragmatic"}, details: "bfroken"}
# %BugReport{
#   details: "bfroken",
#   owner: %Customer{company: "Pragmatic", name: "Dave"},
#   severity: 1
# }
# iex(2)> report.owner.company
# "Pragmatic"
