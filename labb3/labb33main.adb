with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Command_Line;    use Ada.Command_Line;
with labb33;

procedure labb33main is
   
   AC: Natural;
   R, C: Integer;
   
begin
   
   AC:= Argument_Count;
    R:= Integer'Value(Argument(1));
    C:= Integer'Value(Argument(2));
   if AC /= 2 then
      Put("Felaktigt antal kommandoradsargument...");
      
   elsif R < 2 then
      Put("Det måste vara minst 2 rader för att kunna sortera data...");
      
   elsif C < 1 then
      Put("Det kan inte vara mindre än 1 data per rad i datamängden...");
      
   else
      Labb33(R, C);
   end if;
  
end labb33main;
