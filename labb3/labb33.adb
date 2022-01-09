with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Integer_Text_IO;       use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;         use Ada.Float_Text_IO;
with Ada.Numerics.Float_Random;


procedure labb33(R, C: in Integer) is
   
   type Small_Array_Type is array (1..C) of Integer;
   type Big_Array_Type is array (1..R) of Small_Array_Type;
   
   A: Big_Array_Type;
   
   
----PUT_BIG----
   procedure Put(Arr: in out Big_Array_Type) is
      
   begin
      for J in A'Range loop
	 Put(Arr(J)(1), Width => 3);
	 Put(Arr(J)(2), Width => 3);
	 New_Line;
      end loop;
   end Put;
   
   
----GENERATE----
   procedure Generate(Arr: in out Big_Array_Type) is
      I: Integer;
      Random: Float;
      G: Ada.Numerics.Float_Random.Generator;
   begin
      Ada.Numerics.Float_Random.Reset(G);
      for P in 1..C loop
         for J in 1..R Loop
	    Random:= Ada.Numerics.Float_Random.Random(G);
	    I:= Integer(Float'Ceiling(Random*10.0));
	    Arr(J)(P):= I;
         end loop;
      end loop;
      Put(Arr);
      New_Line;
   end Generate;
   
   
----SWAP_INT----
   procedure Swap(A, B: in out Integer) is
      Ref: Integer;
   begin
      Ref:= A;
      A:= B;
      B:= Ref;
   end Swap;   
   
   
----">"----
   function ">"(L, H: in Small_Array_Type) return Boolean is
   begin
      if L(C) > H(C) then
	 return TRUE;
      Elsif L(C) < H(C) then
	 return FALSE;
      else 
	  -- for Q in 1..10 loop 
	    -- if L(C-Q) < H(C-Q) then
	       return False;
	--	exit;
	  --   elsif L(C-Q) > H(C-Q) then
	    --    return True;
	--	exit;
	  -- end if;
--	 end loop;
      end if;
   end ">";
   
   
----SWAP_Small_Array----
   procedure Swap(A, B: in out Small_Array_Type) is
      Ref: Small_Array_Type;
   begin
      Ref:= A;
      A:= B;
      B:= Ref;
   end Swap;
   
   
----SORT----
   procedure Sort(Arr: in out Big_Array_Type) is
      
   begin
      for J in 1..R loop
         for Q in 1..R loop
            if Arr(J) > Arr(Q) and Q > J then
	       Swap(Arr(J), Arr(Q));
            end if;
         end loop;
      end loop;
      Put(Arr);
   end Sort;
   
   
begin
   Generate(A);
   --Sort(A);
   
end labb33;
