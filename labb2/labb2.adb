with Ada.Text_IO;		use Ada.Text_IO;
with Ada.Integer_Text_IO;	use Ada.Integer_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
with Ada.Numerics;

procedure Labb2 is

   function Rad2Deg(V : in Float) return Integer is
   begin
      return Integer(V*(360.0/(2.0*Ada.Numerics.Pi)));
   end Rad2Deg;


   procedure LengthAB(Xa : in Integer;
                      Ya : in Integer;
                      Za : in Integer;
                      Xb : in Integer;
                      Yb : in Integer;
                      Zb : in Integer;
                      L  : out Integer) is
   begin
     L := Integer(Sqrt(Float(((Xb-Xa)/100)**2+((Yb-Ya)/100)**2+((Zb-Za)/100)**2)));
     
   end LengthAB;


   procedure AngleVy(Xa : in Integer;
                     Ya : in Integer;
                     Za : in Integer;
                     Xb : in Integer;
                     Yb : in Integer;
                     Zb : in Integer;
                     Vy : out Integer) is

      Zc, C : Integer;
      begin
      Zc := Zb-Za;
      C  := Integer(Sqrt(Float(((Xb-Xa)/100)**2+((Yb-Ya)/100)**2+((Zb-Za)/100)**2)));
      Vy := Rad2Deg(Arccos(Float(Zc/C)));
      end AngleVy;

   procedure AngleVz(Xa : in Integer;
                     Ya : in Integer;
                     Xb : in Integer;
                     Yb : in Integer;
                     Vz : out Integer) is
   Xc, Yc : Integer;
   begin
      Xc := Xb-Xa;
      Yc := Yb-Ya;

      Vz := Rad2Deg(Arctan(Float(Yc/Xc)));

   end AngleVz;



   procedure Create_Vector_Data(Xa : in Integer;
                                Ya : in Integer;
                                Za : in Integer;
                                Xb : in Integer;
                                Yb : in Integer;
                                Zb : in Integer;
                                L  : out Integer;
                                Vy : out Integer;
                                Vz : out Integer) is
   begin
      LengthAB(Xa, Ya, Za, Xb, Yb, Zb, L);

      AngleVy(Xa, Ya, Za, Xb, Yb, Zb, Vy);

      AngleVz(Xa, Ya, Xb, Yb, Vz);


   end Create_Vector_Data;


   Xa, Ya, Za, Xb, Yb, Zb: Integer;
   L, Vy, Vz : Integer;
begin
   Put("Mata in punkten A i cm (X, Y, Z):  ");
   Get(Xa);
   Get(Ya);
   Get(Za);
   Put("Mata in punkten B i cm (X, Y, Z): ");
   Get(Xb);
   Get(Yb);
   Get(Zb);
   Create_Vector_Data(Xa, Ya, Za, Xb, Yb, Zb, L, Vy, Vz);
   Put_Line("Längd (i m)     Vy     Vz");
   Put(L,  Width => 11);
   Put(Vy, Width => 7);
   Put(Vz, Width => 7);
   New_Line;
end Labb2;

  
