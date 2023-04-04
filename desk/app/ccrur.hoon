/-  *ccrur
/+  default-agent, dbug, agentio, verb, goon
|%
+$  state-0  [%0 =index-0]
+$  state-1  [%1 =index =mirror =sources =query]
+$  versioned-state
  $%  state-0
      state-1
  ==
+$  card  card:agent:gall
+$  query  (each @ud @t)
--
^-  agent:gall
%-  agent:dbug
%+  verb  |
=|  state-1
=*  state  -
=<
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %|) bowl)
    io    ~(. agentio bowl)
    helper  ~(. +> bowl)
++  on-init
  :_  this(sources (~(put in sources) ~tondes-sitrym))
  [%pass /mirror %agent [~tondes-sitrym %ccrur] %watch /mirror]~
++  on-save
  ^-  vase
  !>(state)
::
++  on-load
  |=  old-vase=vase
  ^-  (quip card _this)
  =+  !<(old=versioned-state old-vase)
  ?-  -.old
      %1
    `this(state old)
    ::
      %0
    =/  =index-0  +.old
    =/  =^index  %-  ~(urn by index-0)
          |=  [k=key v=(list entry)]
          (malt (turn v |=(=entry [entry our.bowl])))
    =/  =^mirror  (~(gas in *^mirror) (zing ~(val by index-0)))
    `this(state [%1 index mirror ~])
  ==
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?>  (team:title our.bowl src.bowl)
  ?:  =(%goon-stab mark)
    ~&  (text vase)
    =^  cards  state
    (on-stab:helper !<(stab:goon vase))
    [cards this]
  ?.  =(%ccrur-action mark)  (on-poke:def mark vase)
    =/  act  !<(action vase)
    ?-  -.act
        %mir
      :_  this(sources (~(put in sources) source.act))
      [%pass /mirror %agent [source.act %ccrur] %watch /mirror]~
      ::
        %end
      :_  this(sources (~(del in sources) source.act))
      [%pass /mirror %agent [source.act %ccrur] %leave ~]~
      ::
        %add
      =/  =entry  (cuss entry.act)
      =/  =key    (reduce:helper entry)
      =/  =nexus  (~(gut by index) key ~)
      %-  (slog >[key nexus]< ~)
      ?:  (~(has by nexus) entry)  `this
        :_  %_  this
              mirror  (~(put in mirror) entry)
              index   (~(put by index) key (~(put by nexus) entry our.bowl))
            ==
        [%give %fact ~[/mirror] %ccrur-update !>(`update`[%new key entry])]~
      ::
        %del
      =/  =entry  (cuss entry.act)
      =/  =key    (reduce:helper entry)
      =/  =nexus  (~(got by index) key)
      ?.  (~(has by nexus) entry)  `this
        :_  %_  this
              mirror  (~(del in mirror) entry)
              index   (~(put by index) key (~(del by nexus) entry))
            ==
        [%give %fact ~[/mirror] %ccrur-update !>(`update`[%gon key entry])]~
    ==
::
++  on-watch
  |=  =path
  ^-  (quip card _this)
  ?+  path  (on-watch:def path)
    [%client ~]  `this
    [%mirror ~]
      :_  this
      [%give %fact ~ %ccrur-update !>(`update`[%all mirror])]~
  ==
::
++  on-peek
  |=  =path
  ^-  (unit (unit cage))
  ?>  (team:title our.bowl src.bowl)
  ?+  path  (on-peek:def path)
      [%x %key @ ~]
    =/  key  (slav %ud i.t.t.path)
    ``ccrur-update+!>(`update`[%see key (~(gut by index) key ~)])
    ::
      [%x %entry @ ~]
    =/  entry  (cuss (trip i.t.t.path))
    =/  =key  (reduce:helper entry)
    ``ccrur-update+!>(`update`[%see key (~(gut by index) key ~)])
    ::
      [%x %who ~]
    ``ccrur-update+!>(`update`[%eye sources])
    ::
      [%x %goon ~]
    ``noun+!>(goon-render)
  ==
::
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^-  (quip card _this)
  ?+  wire  (on-agent:def wire sign)
      [%mirror ~]
    ?>  (~(has in sources) src.bowl)
    ?+  -.sign  (on-agent:def wire sign)
        %fact
      ?>  =(p.cage.sign %ccrur-update)
      =+  !<(data=update q.cage.sign)
      ?+  -.data  (on-agent:def wire sign)
          %new
        =/  =entry  (cuss entry.data)
        =/  =key    (reduce:helper entry)
        =/  =nexus  (~(gut by index) key ~)
        %-  (slog >[key nexus]< ~)
        ?:  (~(has by nexus) entry)  `this
          :_  %_  this
                mirror  (~(put in mirror) entry)
                index   (~(put by index) key (~(put by nexus) entry src.bowl))
              ==
          [%give %fact ~[/mirror] %ccrur-update !>(`update`[%new key entry])]~
        ::
          %gon
        =/  =entry  (cuss entry.data)
        =/  =key    (reduce:helper entry)
        =/  =nexus  (~(gut by index) key ~)
        ?.  (~(has by nexus) entry)  `this
          ?.  =((~(got by nexus) entry) src.bowl)  `this
            :_  %_  this
                  mirror  (~(del in mirror) entry)
                  index   (~(put by index) key (~(del by nexus) entry))
                ==
            [%give %fact ~[/mirror] %ccrur-update !>(`update`[%gon key entry])]~
        ::
          %all
        =/  grown=^index
          %-  |=  [lab=^index =(list entry)]
              |-
              ?~  list  lab
                =/  =key    (reduce:helper i.list)
                =/  =nexus  (~(gut by lab) key ~)
                %_  $
                  list  t.list
                  lab   (~(put by lab) key (~(put by nexus) i.list src.bowl))
                ==
          [index ~(tap in (~(dif in mirror.data) mirror))]
        `this(index grown, mirror (~(uni in mirror) mirror.data))
      ==
    ==
  ==
::
++  on-arvo  on-arvo:def
++  on-fail  on-fail:def
++  on-leave  on-leave:def
-- 
|_  bowl:gall
  ++  reduce
    |=  entry=tape
    ^-  @u
    =|  acc=@u
    |-
    ?~  entry  acc
    =/  utf  `@u`i.entry
    =/  eq  ?~  (find [utf]~ (gulf 48 57))
              ?~  (find [utf]~ (gulf 65 90))  0  (sub utf 55)
                (sub i.entry 48)
    $(entry t.entry, acc (add acc eq))
  ++  goon-render
    ^-  goad:goon
    :+  %ccrur
      :~
        lede/'ccrur'
      ==
    :~
      render-query
      render-results
    ==
  ++  render-query
    ^-  goad:goon
    :+  %query
        :~
          lede/'Query'
        ==
      :~
        :+  %search
          :~
            value/?:(?=(%.y -.query) ud/p.query t/p.query)
            edit/~
            :-  %act
            :~  [%save 'Add to library' '']
            ==
          ==
        ~
        :+  %is-key
          :~
            value/f/-.query
            edit/~
          ==
        ~
      ==
  ++  render-results
    ^-  goad:goon
    =/  aq=@u  ?:(?=(%.y -.query) p.query (reduce (trip p.query)))
    ~&  query
    ~&  aq
    |^
    :+  %results
      :~
        lede/'Results'
      ==
    ?:  =(aq 0)
      empty-result
    not-found
    ::
    ++  not-found
      ^-  (list goad:goon)
      :-
        :+  %aq
          :~  lede/'AQ'
              value/ud/aq
          ==
        ~
      =/  =nexus  (~(gut by index) aq *nexus)
      =-  `(list goad:goon)`~[-]
      ?:  =(0 ~(wyt by nexus))
        :+  %nothing
          ~  ~
      :+  %equivalences
        :~  lede/'Equivalences'
        ==
      %+  turn  ~(tap by nexus)
      |=  [=entry =source]
      ^-  goad:goon
      :+  t/(crip entry)
        ~[value/t/(crip entry)]
        :~
          :+  %source
            :~  lede/'Source'
                value/p/source
            ==
          ~
        ==
    ++  empty-result
      ^-  (list goad:goon)
      ~
    ++  some-found
      *(list goad:goon)
    --
  ++  on-stab
    |=  =stab:goon
    |^  ^-  (quip card _state)
    ?+  p.stab  !!
      [%ccrur %query %search ~]
    ?:  ?=(%act -.q.stab)
      (on-search-act q.stab)
    ?:  ?=(%.y -.query)
      (on-search-ud q.stab)
    (on-search-t q.stab)
      [%ccrur %query %is-key ~]
    (on-search-toggle q.stab)
    ==
    ::
    ++  on-search-ud
      |=  =blade:goon
      ?>  ?=(%edit -.blade)
      ?>  ?=(^ iota.blade)
      ?>  ?=(%ud p.iota.blade)
      `state(query [%.y q.iota.blade])
    ::
    ++  on-search-t
      |=  =blade:goon
      ?>  ?=(%edit -.blade)
      ?>  ?=(^ iota.blade)
      ?>  ?=(%t p.iota.blade)
      `state(query [%.n q.iota.blade])
    ++  on-search-toggle
      |=  =blade:goon
      ?>  ?=(%edit -.blade)
      ?>  ?=(^ iota.blade)
      ?>  ?=(%f p.iota.blade)
      `state(query ?:(=(q.iota.blade &) %.y^0 %.n^''))
    ++  on-search-act
      |=  =blade:goon
      ?>  ?=(%act -.blade)
      ?>  ?=(%save term.blade)
      ?>  ?=(%.n -.query)
      =/  aq=@u  (reduce (trip p.query))
      =/  =nexus  (~(gut by index) aq *nexus)
      :-  ~
        %=  state
          mirror  (~(put in mirror) (trip p.query))
          index   (~(put by index) aq (~(put by nexus) (trip p.query) our.bowl))
        ==
    --
  :: ++  reconcile
  ::   |=  [target=^index new=^index]
  ::   ^-  ^index
  ::   %-  (~(uno by target) new)
  ::     |=  [k=@ud x=nexus y=nexus]
  ::     ^-  nexus
  ::     |-
  ::     ?~  x  y
  ::       ?^  (find ~[i.x] y)
  ::         $(x t.x)
  ::       $(x t.x, y (snoc y i.x))
--
