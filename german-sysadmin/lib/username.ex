defmodule Username do
  def sanitize([]), do: []
  def sanitize(username) do
    [first | tail] = username
    case first do
    first when first in 97..122 -> [first] ++ sanitize(tail)
    95 -> [first] ++ sanitize(tail)
    228 -> [?a,?e] ++ sanitize(tail)
    246 -> [?o,?e] ++ sanitize(tail)
    252 -> [?u,?e] ++ sanitize(tail)
    223 -> [?s,?s] ++ sanitize(tail)
    _ -> sanitize(tail)
    end
  end
end
