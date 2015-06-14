import string
import functools

def _to_ascii_code(letter):
    return string.ascii_lowercase.index(letter)

def _hash(word):
    return "%s:%s" % (functools.reduce(lambda x,y: x + _to_ascii_code(y), word, 0), len(word))

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
