def _hash(word):
    return "".join(sorted(word))

def is_anagram(w1, w2):
    return _hash(w1) == _hash(w2)

def collect_anagrams(words):
    anagrams = {}
    for w in words:
        key = _hash(w)
        if key not in anagrams:
            anagrams[key] = []

        anagrams[key].append(w)

    return anagrams.values()

collected = collect_anagrams(["lol", "llo", "hi", "ho", "ih"]);
print(collected)
