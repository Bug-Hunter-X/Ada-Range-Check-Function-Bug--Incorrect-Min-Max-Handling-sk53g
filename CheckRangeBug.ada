```ada
function Check_Range(Value : Integer; Min, Max : Integer) return Boolean is
begin
   if Value < Min or else Value > Max then
      return False;
   else
      return True;
   end if;
end Check_Range;

procedure Example is
   Result : Boolean;
begin
   Result := Check_Range(10, 1, 100);  -- Correct, in range
   Result := Check_Range(-5, 1, 100); -- Correct, out of range
   Result := Check_Range(1000, 1, 100); -- Correct, out of range
   Result := Check_Range(5, 10, 1); -- Incorrect, order of min/max reversed
end Example;
```