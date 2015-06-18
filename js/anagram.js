function hash(word) {
  return word.split('').sort().reduce((x, y) => x + y);
}

function is_anagram(w1, w2) {
  return hash(w1) == hash(w2);
}

function collect_anagrams(words) {
  let anagrams = {};
  for (let w of words) {
    let key = hash(w)
    if (Object.keys(anagrams).indexOf(key) == -1) {
      anagrams[key] = [];
    }

    anagrams[key].push(w)
  }

  return Object.values(anagrams);
}

let collected = collect_anagrams(["lol", "llo", "hi", "ho", "ih"]);
console.log(collected);
