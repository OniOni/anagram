defmodule Anagram do
  def hash(word) do
    Enum.reduce(Enum.sort(String.split(word, "")), "", fn(x,y) -> x <> y end)
  end

  def is_anagram(w1, w2) do
    hash(w1) == hash(w2)
  end

  def collect_anagrams(words) do
    anagrams = collect_anagrams(words, %{})
    pretty_print Map.values anagrams
  end

  def collect_anagrams([h | t], acc) do
    key = hash(h)
    if not Map.has_key?(acc, key) do
      acc = Map.put(acc, key, [])
    end
    acc = Map.update!(acc, key, fn val -> val ++ [h] end)
    collect_anagrams(t, acc)
  end

  def collect_anagrams([], acc) do
    acc
  end

  def pretty_print([h|t]) do
    res = case h do
            [h2|t2] ->
              "[#{h2}," <> pretty_print(t2) <> "],"
            _ ->
              "#{h},"
          end
    res <> pretty_print(t)
  end

  def pretty_print([]) do
    ""
  end

end

IO.puts Anagram.collect_anagrams(["ho", "oh", "hello", "loner", "llohe"])
