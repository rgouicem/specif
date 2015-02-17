node watchdog_delay
  (set: bool;
  reset: bool;
  delay: int)
returns
  (alarm: bool);

var
  V12_time: int;
  V37_isset: bool;
  V48_isset: bool;

let
  assert (not (set and reset));
  assert (not (set and reset));
  alarm = (if (V12_time < delay) then (V37_isset and false) else (V48_isset and 
  true));
  V12_time = (if set then 0 else (0 -> (if ((pre V12_time) < delay) then ((pre 
  V12_time) + 1) else 0)));
  V37_isset = (if set then true else (if reset then false else (false -> (pre 
  V37_isset))));
  V48_isset = (if set then true else (if reset then false else (false -> (pre 
  V48_isset))));
tel

