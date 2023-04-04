/-  *ccrur
|_  =index
++  grow
  |%
    ++  noun  index
  --
++  grab
  |%
    ++  noun  ^index
    ++  json
      =,  dejs:format
      |^
      (ok |=(k=@t ~|(k (rash k dem))) (ar sa))
      ++  ok
        |*  [key=$-(@t *) val=fist]
        |=  j=^^json
        ^-  (map _(key) _(val))
        ?>  ?=(%o -.j)
        %-  ~(gas by *(map _(key) _(val)))
        %+  turn  ~(tap by p.j)
          |=  [k=@t v=^^json]
          [(key k) (val v)]
      --
  --
++  grad  %noun
--