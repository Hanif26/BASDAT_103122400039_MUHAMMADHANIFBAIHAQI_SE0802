Create or replace procedure keliling_lingkaran
as R number(5); K number(10);
Begin
R := 21;
K := 2*((22/7)*R);
Dbms_output.put_line ('Keliling Lingkaran = ' || K);
End;
/
Execute keliling_lingkaran;

SELECT 2 * ((22/7) * 21) AS keliling FROM dual;