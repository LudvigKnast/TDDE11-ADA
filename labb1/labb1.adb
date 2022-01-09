with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure labb1 is

   First, Sista, Steg, Moms: Float;



begin

   Put("Första pris: ");
   Get(First);
   
   while First <= 0.0 loop
      Put("Felaktigt första pris! Försök igen: ");
      Get(First);
   end loop;
   
   
   Put("Sista pris: ");
   Get(Sista);
   
   while First > Sista loop
      Put("Felaktigt sista pris! Försök igen: ");
      Get(Sista);
   end loop;
   
   
   Put("Steg: ");
   Get(Steg);
   
   while Steg <= 0.0 loop
      Put("Felaktigt steg! Försök igen: ");
      Get(Steg);
   end loop;
   
   
   Put("Momsprocent: ");
   Get(Moms);
   
   while Moms < 0.0 or Moms > 100.0 loop
      Put("Felaktig momsprocent! Försök igen: ");
      Get(Moms);
   end loop;
   
   New_Line(1);

   Put("=== Momstabell ===");
   New_Line;
   Put("Pris utan moms   Moms   Pris med moms");
   New_Line;

   while First <= Sista loop
      Put("     ");
      Put(First, Fore => 2, Aft => 2, Exp => 0);
      Put("      ");
      Put(First*(Moms/100.0), Fore => 2, Aft => 2, Exp => 0);
      Put("       ");
      Put(First*(Moms/100.0)+First, Fore => 2, Aft => 2, Exp => 0);
      First:= First+Steg;
      New_Line;
   end loop;

 end labb1;
