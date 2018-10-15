! cerner_2^5_2018
! ***************************************
! Output: ?evaC A nI staB batS I naC ,avE 
! ***************************************

program ReverseString
  implicit none !force variable declaration
  character (64) :: inputOutput !64 is just a wild guess
  integer :: iterator, length
  
  inputOutput = "Eva, Can I Stab Bats In A Cave?" !oh no, another palindrome
  length = len_trim (inputOutput) !ignore trailing whitespaces
  
  write (*,*) inputOutput
  ! https://stackoverflow.com/questions/10605574/how-to-reverse-a-chain-of-character-fortran-90
  forall (iterator=1:length) inputOutput (iterator:iterator) = inputOutput (length-iterator+1:length-iterator+1)
  write (*,*) inputOutput
  
end program ReverseString