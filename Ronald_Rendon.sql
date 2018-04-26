--------------------------------------------------------
-- Archivo creado  - miércoles-abril-25-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FUNCTION_1
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "PARCIAL"."FUNCTION_1" (va in number, vb in number, vc in number)
RETURN  varchar2 IS
  txt varchar2(20);
  BEGIN
  
IF vb >= vc THEN
       txt := va||'/'||vb||'/'||'Andres';
  ELSE
      txt := va||'/'||vb||'/'||'Martinez';
END IF;

    RETURN txt;
  END;
--------------------------------------------------------
--  DDL for Function FUNCTION_2
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "PARCIAL"."FUNCTION_2" (a in number)
RETURN  varchar2 IS
  txt varchar2(60);

  BEGIN
declare
    n number;
    m number;
    rev number:=0;
    r number; 
begin
    n:=12321;
    m:=n;
    
    while n>0
    loop
        r:=mod(n,10);
        rev:=(rev*10)+r;
        n:=trunc(n/10);
    end loop;
    
    if m=rev
    then
        txt := 'true';
    else
         txt := 'false';
    end if;
end;
  
    RETURN txt;
  END;
