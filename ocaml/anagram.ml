open Batteries

let list_to_str l = String.init (List.length l) (List.nth l);;

let hash word =
  list_to_str (List.sort Char.compare (String.to_list word));;

print_string (hash "hello");;
print_string (hash "lol");;
