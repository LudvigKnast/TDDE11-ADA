with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;

procedure Labb4 is 
   
   type Date_Type is 
      record
	 Year, Month, Day: Integer;
      end record;
   
   Date: Date_Type;
   
   
   ---Get_Date---
   procedure Get(Date: in out Date_Type) is
      Y, M, D: Integer;    
      C: Character;
   begin
      Get(Y);
      Get(C);
      Get(M);
      Get(C);
      Get(D);
      Date:= (Y, M, D);
   end Get;
      
   ---Put_Date---     
   procedure Put(Date: in out Date_Type) is   
   begin 
      Put(Date.Year, Width => 4);
      Put("-");
      if Date.Month < 10 then
	 Put("0");
	 Put(Date.Month, Width => 1);
      else 
	 Put(Date.Month);
      end if;
      Put("-");
      if Date.Day < 10 then
	 Put("0");
	 Put(Date.Day, Width => 1);
      else 
	 Put(Date.Day);
      end if;
   end Put;
 	 
   
begin
   Put("Ange ett datum: ");
   Get(Date);
   Put(Date);
   
end Labb4;
