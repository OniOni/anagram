defmodule Anagram do
  def hash(word) do
    Enum.reduce(Enum.sort(String.split(word, "")), "", fn(x,y) -> x <> y end)
  end

  def is_anagram(w1, w2) do
    hash(w1) == hash(w2)
  end

  def collect_anagrams(words) do
    Keyword.values _collect_anagrams(words)
  end

  def _collect_anagrams([h | t]) do
    key = String.to_atom(hash(h))
    Keyword.merge(_collect_anagrams(t), [{key, [h]}], fn (_, v1, v2) ->
      v1 ++ v2 end)
  end

  def _collect_anagrams([]) do
    Keyword.new()
  end
end

IO.puts Anagram.collect_anagrams ["ho", "oh", "hello", "loner", "llohe"]
