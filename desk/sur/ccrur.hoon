|%
+$  source   @p
+$  sources  (set source)
+$  key      @u
+$  entry    tape
+$  nexus    (map entry source)
+$  index    (map key nexus)
+$  index-0  (map key (list entry))
+$  mirror   (set entry)
+$  action
    $%  [%add =entry]
        [%del =entry]
        [%mir =source]
        [%end =source]
    ==
+$  update
    $%  [%new =key =entry]
        [%gon =key =entry]
        [%all =mirror]
        [%see =key =nexus]
        [%eye =sources]
    ==
--