node portillon
  (A: bool;
  B: bool)
returns
  (alarm: bool);

var
  V5_seen_a: bool;

let
  assert (not (A and B));
  alarm = (B -> (((not (pre V5_seen_a)) and B) or ((pre V5_seen_a) and A)));
  V5_seen_a = (if (A and (not (pre V5_seen_a))) then true else (if (B and (pre 
  V5_seen_a)) then false else (false -> (pre V5_seen_a))));
tel

