defmodule Attendee do
  defstruct name: "", paid: false, over_18: true

  def may_attend_after_party(attendee = %Attendee{}) do
    attendee.paid && attendee.over_18
  end

  def print_vip_badge(%Attendee{name: name}) when name != "" do
    IO.puts "Very cheap badge for #{name}"
  end

  def print_vip_badge(%Attendee{}) do
    raise "missing name for badge"
  end
end

# iex(1)> a1 = %Attendee{name: "Dave", over_18: true}
# %Attendee{name: "Dave", over_18: true, paid: false}
# iex(2)> Attendee.mayu_attend_after_party(a1)
# ** (UndefinedFunctionError) function Attendee.mayu_attend_after_party/1 is undefined or private. Did you mean one of:

#       * may_attend_after_party/1

#     Attendee.mayu_attend_after_party(%Attendee{name: "Dave", over_18: true, paid: false})
# iex(2)> Attendee.may_attend_after_party(a1)
# false
# iex(3)> Attendee.print_vip_badge(a2)
# ** (CompileError) iex:3: undefined function a2/0

# iex(3)> a2 = %Attendee{a1 | paid: true}
# %Attendee{name: "Dave", over_18: true, paid: true}
# iex(4)> Attendee.print_vip_badge(a2)
# Very cheap badge for Dave
# :ok
# iex(5)> a3 = %Attendee{}
# %Attendee{name: "", over_18: true, paid: false}
# iex(6)> Attendee.print_vip_badge(a3)
# ** (RuntimeError) missing name for badge
#     maps/defstruct1.exs:13: Attendee.print_vip_badge/1
