node EDGE
  (b: bool)
returns
  (edge: bool);

let
  edge = (false -> (b and (not (pre b))));
tel

