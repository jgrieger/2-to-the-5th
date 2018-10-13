(*  
  cerner_2^5_2018 

  Reads the upper boundary from the std input aka console
  and generates a random integer with random sign

  Example:
    - input: 1000
    - output: -234
*)

let () =
  Random.self_init();
  let max = read_int() in
  let n =
    if Random.bool () then
      let n = Random.int max in
      (n)
    else
      let n = (Random.int max) * -1 in
      (n)
  in 
  print_int n
