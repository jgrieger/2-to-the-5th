-- cerner_2^5_2018
with Ada.Command_line; use Ada.Command_Line;
with Ada.Text_IO; use Ada.Text_IO;
 
procedure EvenOrOddInputs is
begin
   for A in 1..Argument_Count loop
    declare
      N : Integer := Integer'Value(Argument(A));
    begin
      if N rem 2 = 0 then
        Put_Line ("Even");
      elsif N rem 2 /= 0 then
        Put_Line ("Odd");
      else
        Put_Line ("This is very odd!");
      end if;
    end;
   end loop;
   New_Line;
end EvenOrOddInputs;