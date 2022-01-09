with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
with Ada.Numerics;
with Ada.Numerics.Elementary_Functions;
with Ada.Numerics.Discrete_Random;
with Resultatlista;
use Resultatlista;
use Ada.Numerics;
use Ada.Numerics.Elementary_Functions;
use Ada.Text_IO;
use Ada.Integer_Text_IO;
use Ada.Float_Text_IO;

procedure Testprogram is
   
   
   I1,I2: Integer;
   A, Ref: Array_Type;
   Lista: Table_Type;
   
begin
   
   Puttiluring(Lista);
   
      loop
	 
	  loop
	     begin
		New_Line;
		Put("Du Fick Aids");
		
	   for I in 1..5 loop
	     Shuffle(I1);
	     A(I) := I1;
	   end loop;
	   
	   for I in 1..5 loop
	      
	      Put(A(I),3);
	   end loop;
	   
	   for I in 1..2 loop
	      New_Line;
	      Put("välj tärningar");
	      for I in 1..5 loop
		 Get(Ref(I));
	      end loop;
	      
	      Kasta(A, Ref); 
	      
	      for I in 1..5 loop
		 Put(A(I),3);
	      end loop;
	      
	   end loop;
      
	 New_Line;
	 Put("Skriv in vad fan du vill försöka få för NÅGE!! ");
	 New_Line;
	 New_Line;
	 Put("1 för Ettor, 7 för Par, 8 för Två-Par, 9 för Triss, 15 för Yatzy, Osv.."); New_Line;
	 Put("Du Fattar..");
	 New_Line;
	 New_Line;
	   Put("SESÅ: ");
	   Get(I2);
	   
	   Put("Duktig Idiot!!");
	   New_Line;
	 
     
	   
--	A:= (5,4,4,5,6);
--      Put("Välj dina tärningar väl: ");
--      for I in 1..5 loop
--	 Get(I1);
--	 A(I):=I1;
--	 end loop;
	 
      
      
      Sort(A);
      
      if I2 = 1 then
	Lista.One:= One(A,Lista);
      elsif I2 = 2 then
	Lista.Two:= Two(A,Lista);
      elsif I2 = 3 then
	Lista.Three:= Three(A,Lista);
      elsif I2 = 4 then
	Lista.Four:= Four(A,Lista);
      elsif I2 = 5 then
	Lista.Five:= Five(A,Lista); 
      elsif I2 = 6 then
	Lista.Six:= Six(A,Lista);
      elsif I2 = 7 then
	Lista.Pair:= Pair(A,Lista);
      elsif I2 = 8 then
	Lista.Two_Pair:= Two_Pair(A,Lista);
      elsif I2 = 9 then
	Lista.Tripple:= Tripple(A,Lista);
      elsif I2 = 10 then
	 Lista.Quads:= Quad(A,Lista);
      elsif I2 = 11 then
	Lista.Full_House:= Full_House(A,Lista);
      elsif I2 = 12 then
	Lista.Small_Straight:= Small_Straight(A,Lista);
      elsif I2 = 13 then
	Lista.Big_Straight:= Big_Straight(A,Lista);
      elsif I2 = 14 then
	Lista.Chance:= Chance(A,Lista);
      elsif I2 = 15 then
	 Lista.Yatzy:= Yatzy(A,Lista);
      end if;
      Totalsum(Lista);
      Bonus(Lista);
      Puttiluring(Lista);
	   
      
      
	 
	 exit;
	 exception
	 when Decision_Error => Put("Testa igen DÖMHÖVE!!");
	    New_Line;
	    
      end;
      end loop;
      New_Line;
      end loop;
      
      end Testprogram;
