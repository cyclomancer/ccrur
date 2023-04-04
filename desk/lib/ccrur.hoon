/-  *ccrur
|%
++  dejs-action
  =,  dejs:format
  %-  of
    :~  [%add sa]
        [%del sa]
        [%mir (se %p)]
        [%end (se %p)]
    ==
::
++  enjs-update
  =,  enjs:format
  |=  dat=update
  ^-  json
  ?+  -.dat  ~
    %see
  %-  pairs
  :~  ['key' (numb key.dat)]
      :-  'nexus'
      :-  %a
      %+  turn  ~(tap by nexus.dat)
      |=  el=(pair entry source)
      %-  pairs
      :~  ['exp' s+(crip p.el)]
          ['source' s+(scot %p q.el)]
      ==
  ==
  ::
    %new
  %-  pairs
  :~  ['key' (numb key.dat)]
      ['entry' s+(crip entry.dat)]
  ==
  ::
    %gon
  %-  pairs
  :~  ['key' (numb key.dat)]
      ['entry' s+(crip entry.dat)]
  ==
  ::
    %eye
  %-  frond
  :-  'sources'
  :-  %a
  %+  turn  ~(tap in sources.dat)
  |=(src=source s+(scot %p src))
  ::
  ==
--