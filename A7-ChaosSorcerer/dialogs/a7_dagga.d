// *** Item: Dagger (with circlet) ***

BEGIN ~a7_daggA~

IF ~Kit(LastTalkedToBy, A7_CHAOS_SORCERER)~ Combine.1010
  SAY @22003 /* (You hold the dagger in your hands and look for another item it can be combined with...) */
  + ~PartyHasItemIdentified("a7_clck1")~ + @22025 /* (Combine dagger with cloak.) */ + Combine.1011
  + ~PartyHasItem("a7_clck5")~ + @22025 /* (Combine dagger with cloak.) */ + Combine.1111.a

  + ~PartyHasItemIdentified("a7_shld4")~ + @22027 /* (Combine dagger with buckler.) */ + Combine.1110
  + ~PartyHasItem("a7_shld5")~ + @22027 /* (Combine dagger with buckler.) */ + Combine.1111.b

  ++ @22040 /* (Do nothing.) */ EXIT
END

IF ~!Kit(LastTalkedToBy, A7_CHAOS_SORCERER)~ Combine.Denied
  SAY @22006 /* (Without the gift to access the Elemental Chaos you are unable to unlock the item's true potential...) */
  IF ~~ EXIT
END


IF ~~ Combine.1011
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_daggA") DestroyItem("a7_clck1") CreateItem("a7_daggB", 0, 1, 3) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1110
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_daggA") DestroyItem("a7_shld4") CreateItem("a7_daggE", 0, 1, 3) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.a
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_daggA") DestroyItem("a7_clck5") CreateItem("a7_daggF", 0, 1, 4) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.b
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_daggA") DestroyItem("a7_shld5") CreateItem("a7_daggF", 0, 1, 4) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

