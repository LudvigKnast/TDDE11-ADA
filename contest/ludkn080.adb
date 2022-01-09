with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed, Ada.Float_Text_IO;

procedure ludkn080 is
   Tot: array(1..200) of Integer;
   Antal, L, Ref, FloatKontroll, Exponenten: Integer;
   S: String(1..200);
   ExpPlats, StringDot, Carry, Start, TotHelLength, First: Integer;
   F: Float;
begin
   Get(Antal);
   Skip_Line;
   for I in 1..200 loop
      Tot(I):= 0;
   end loop;


  for J in 1..Antal loop

      Get_Line(S,L);


--------Göra till vettig sträng----------
      if S(1) = '+' then
         S(1) := '0';
      end if;



      FloatKontroll:= 0;
      for K in 1..L loop
         if S(K) /= '0' and S(K) /= '1' and S(K) /= '2' and S(K) /= '3' and S(K) /= '4' and S(K) /= '5' and S(K) /= '6'
           and S(K) /= '7' and S(K) /= '8' and S(K) /= '9' and  S(K) /= '.' and S(K) /= 'e' and S(K) /= 'E' then
            FloatKontroll:= 1;
      end if;
      end loop;

   if FloatKontroll = 1 then
         F:= Float'Value(S(1..L));
         Put(S, F);
         for K in 1..200 loop
            if S(K) = '0' or S(K) = '1' or S(K) = '2' or S(K) = '3' or S(K) = '4' or S(K) = '5' or S(K) = '6'
              or S(K) = '7' or S(K) = '8' or S(K) = '9' or  S(K) = '.' then
               First:= K;
               exit;
            end if;
         end loop;
         for K in First..200 loop
            S(K-First+1):= S(K);
         end loop;
         L:= 201-First;

    end if;


  -------------Fix Med Exp------------------------------

      ExpPlats:= 0;
      for K in 1..L loop
         if S(K) = 'e' or S(K) = 'E' then
            ExpPlats:= K;
            exit;
         end if;
      end loop;


      if ExpPlats > 0 then

      StringDot:= 0;
      for K in 1..L loop
         if S(K) = '.' then
            StringDot:= K;
            exit;
         end if;
      end loop;

      if S(ExpPlats+1) = '+' then
         Exponenten:= Integer'Value(S(ExpPlats+2..L));
      else
         Exponenten:= Integer'Value(S(ExpPlats+1..L));
      end if;



         if StringDot > 0 then
            if ExpPlats - Stringdot <= Exponenten then
            Ref:= Exponenten+StringDot+1;
            S(Exponenten+StringDot):= '.';
            S(Exponenten+StringDot+1):= '0';
            for K in StringDot..ExpPlats-2 loop
               S(K):= S(K+1);
            end loop;
            for K in ExpPlats-1..Ref-2 loop
            S(K):= '0';
            end loop;
            L:= Ref;
            StringDot:= Exponenten+StringDot;
            else
            for K in StringDot..StringDot+Exponenten-1 loop
                  S(K):= S(K+1);
            end loop;
            S(StringDot+Exponenten):= '.';
            L:= ExpPlats-1;
            StringDot:= StringDot+Exponenten;
            end if;
         else
            Ref:= ExpPlats+Exponenten-1;
            for K in ExpPlats..ExpPlats+Exponenten-1 loop
            S(K):= '0';
            end loop;
            L:= Ref;
         end if;

      end if;
-----------------------------------------
-------------------------------------------
      StringDot:= 0;
      for K in 1..L loop
         if S(K) = '.' then
            StringDot:= K;
            exit;
         end if;
      end loop;

      Carry:= 0;


      if StringDot > 0 then

      for K in reverse StringDot+1..L loop
        Tot(100-StringDot+K):= Tot(100-StringDot+K) + Carry + Integer'Value(S(K..K));
        Carry:= Tot(100-StringDot+K)/10;
        Tot(100-StringDot+K):= Tot(100-StringDot+K)-10*Carry;
      end loop;


      for K in reverse 1..StringDot-1 loop
        Tot(101-StringDot+K):= Tot(101-StringDot+K) + Carry + Integer'Value(S(K..K));
        Carry:= Tot(101-StringDot+K)/10;
        Tot(101-StringDot+K):= Tot(101-StringDot+K)-10*Carry;
        end loop;


      if Carry > 0 then

      --   for K in 1..100 loop
          --  if Tot(K) /= 0 then
             --   TotHelLength:= K;
            --   exit;
          --  end if;
     --    end loop;

         for K in reverse 1..100-StringDot+1 loop
           Tot(K):= Tot(K) + Carry;
           Carry:= Tot(K)/10;
           Tot(K):= Tot(K)-10*Carry;
         end loop;

      end if;



      else
        for K in reverse 1..L loop
        Tot(100-L+K):= Tot(100-L+K) + Carry + Integer'Value(S(K..K));
        Carry:= Tot(100-L+K)/10;
        Tot(100-L+K):= Tot(100-L+K)-10*Carry;
        end loop;

         if Carry > 0 then

           -- for K in 1..100 loop
             --  if Tot(K) /= 0 then
                --  TotHelLength:= K;
                --  exit;
           --    end if;
          --  end loop;

            for K in reverse 1..100-L loop
            Tot(K):= Tot(K) + Carry;
            Carry:= Tot(K)/10;
            Tot(K):= Tot(K)-10*Carry;
            end loop;

         end if;


       end if;


   end loop;



   ---------Ifall det ska rundas------------

   --if Tot(121) > 4 then
    -- Carry:= 1;

     -- for K in reverse 1..120 loop
        -- Tot(K):= Tot(K) + Carry;
        -- Carry:= Tot(K)/10;
        -- Tot(K):= Tot(K)-10*Carry;
     -- end loop;
  -- end if;
   -----------------------------------------


   Start:= 100;
     for K in 1..100 loop
         if Tot(K) /= 0 then
            Start:= K;
            exit;
         end if;
      end loop;


   for J in Start..100 loop
      Put(Tot(J), width => 0);
          end loop;

   Put(".");


   for J in 101..120 loop
      Put(Tot(J), width => 0);
   end loop;

   New_Line;

   end ludkn080;
