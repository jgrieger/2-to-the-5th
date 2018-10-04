// cerner_2^5_2018

Program FizzBuzz;
const maxCount = 100;
var 
    counter : Integer;
    output : String;
begin
	For counter := 1 to maxCount do 
		Begin
		output := '';
		
		If(counter mod 3 = 0) then
			output := 'Fizz';
		If(counter mod 5 = 0) then
			output := output + 'Buzz';		
		If(output = '') then
			Str(counter, output);
			
		writeln(output);
		End;
end.