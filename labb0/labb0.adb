with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure labb0 is
I:Integer;
F:Float;
C:Character;
S:String(1..5);

begin

   Put("Skriv in ett heltal: ");
   Get(I);
   Skip_Line;
   Put("Du skrev in talet: ");
   Put(I, Width => 0);
   New_Line(2);


   Put("Skriv in fem heltal: ");
   Get(I);
   Put("Du skrev in talen: ");
   Put(I, Width => 0);
   Put(" ");
   Get(I);
   Put(I, Width => 0);
   Put(" ");
   Get(I);
   Put(I, Width => 0);
   Put(" ");
   Get(I);
   Put(I, Width => 0);
   Put(" ");
   Get(I);
   Put(I, Width => 0);
   Put(" ");
   Skip_Line;
   New_Line(2);


   Put("Skriv in ett flyttal: ");
   Get(F);
   Skip_Line;
   Put("Du skrev in flyttalet:");
   Put(F, Fore => 3, Aft => 3, Exp => 0);
   New_Line(2);


   Put("Skriv in ett heltal och ett flyttal: ");
   Get(I);
   Get(F);
   Skip_Line;
   Put("Du skrev in heltalet:");
   Put(I, width => 10);
   New_Line;
   Put("Du skrev in flyttalet:");
   Put(F, Fore => 4, Aft => 4, Exp => 0);
   New_Line(2);


   Put("Skriv in ett tecken: ");
   Get(C);
   Skip_Line;
   Put("Du skrev in tecknet: ");
   Put(C);
   New_Line(2);


   Put("Skriv in en sträng med 5 tecken: ");
   Get(S);
   Skip_Line;
   Put("Du skrev in strängen: ");
   Put(S);
   New_Line(2);


   Put("Skriv in en sträng med 3 tecken: ");
   Get(S(1..3));
   Skip_Line;
   Put("Du skrev in strängen: ");
   Put(S(1..3));
   New_Line(2);


   Put("Skriv in ett heltal och en sträng med 5 tecken: ");
   Get(I);
   Get(C);
   Get(S);
   Skip_Line;
   Put("Du skrev in talet |");
   Put(I, Width => 1);
   Put("| och strängen |");
   Put(S);
   Put("|.");
   New_Line(2);


   Put("Skriv in en sträng med 3 tecken och ett flyttal: ");
   Get(S(1..3));
   Get(F);
   Skip_Line;
   Put("Du skrev in """);
   Put(F, Fore => 2, Aft => 3, Exp => 0);
   Put(""" och """);
   Put(S(1..3));
   Put(""".");
   New_Line(2);


   Put("Skriv in en sträng som är maximalt 5 tecken: ");
   Get_Line(S,I);
   if I > 4 then
      Skip_Line;
   end if;   
   Put("Du skrev in strängen: ");
   Put(S(1..I));
   New_Line(2);


   Put("Skriv in en sträng som är maximalt 5 tecken: ");
   Get_Line(S,I);
   if I > 4 then
      Skip_Line;
   end if;
   Put("Du skrev in strängen: ");
   Put(S(1..I));
   New_Line(2);


 end labb0;
