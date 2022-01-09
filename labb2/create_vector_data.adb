--  with Ada.Text_IO;		use Ada.Text_IO;
--  with Ada.Integer_Text_IO;	use Ada.Integer_Text_IO;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
with Ada.Numerics;

procedure Create_Vector_Data(Xa : in Integer;
                             Ya : in Integer;
                             Za : in Integer;
                             Xb : in Integer;
                             Yb : in Integer;
                             Zb : in Integer;
                             L  : out Integer;
                             Vy : out Integer;
                             Vz : out Integer) is
   
   function Rad2Deg(V : in Float) return Integer is
   begin
      return Integer(V*(180.0/(Ada.Numerics.Pi)));
   end Rad2Deg;


   procedure LengthAB(Xa : in Integer;
                      Ya : in Integer;
                      Za : in Integer;
                      Xb : in Integer;
                      Yb : in Integer;
                      Zb : in Integer;
                      L  : out Integer) is
   begin
     L := Integer((Sqrt(Float((Xb-Xa)**2+(Yb-Ya)**2+(Zb-Za)**2)))/100.0);
   end LengthAB;

   procedure AngleVy(Xa : in Integer;
                     Ya : in Integer;
                     Za : in Integer;
                     Xb : in Integer;
                     Yb : in Integer;
                     Zb : in Integer;
                     Vy : out Integer) is

      Zc, C : Float;
   begin
      Zc := Float(Zb-Za);
      C  := (Sqrt(Float((Xb-Xa)**2+(Yb-Ya)**2+(Zb-Za)**2)));

      if C = 0.0 then
         Vy := 0;
      else

         Vy := Rad2Deg(Arccos(Zc/C));
      end if;


   end AngleVy;


   procedure AngleVz(Xa : in Integer;
                     Ya : in Integer;
                     Xb : in Integer;
                     Yb : in Integer;
                     Vz : out Integer) is
   begin
      if Xb-Xa = 0 and Yb-Ya = 0 then
	 Vz:= 999;
      elsif Xb-Xa = 0 and Yb-Ya > 0 then
	 Vz:= 90;
      elsif Xb-Xa = 0 and Yb-Ya < 0 then
	 Vz:= 270;
      else
	 Vz:= Rad2Deg(Arccos(Float(Xb-Xa) /Float(Sqrt(Float((Xb-Xa)**2 +(Yb-Ya)**2)))));
      end if;
      
      if Xb-Xa < 0 and Yb-Ya < 0 then
	 Vz:= Vz +90;
      elsif Xb-Xa > 0 and Yb-Ya < 0 then
	 Vz:= 360 -Vz;
      end if;
   end AngleVz;
   
   begin
      LengthAB(Xa, Ya, Za, Xb, Yb, Zb, L);

      AngleVy(Xa, Ya, Za, Xb, Yb, Zb, Vy);

      AngleVz(Xa, Ya, Xb, Yb, Vz);


   end Create_Vector_Data;
