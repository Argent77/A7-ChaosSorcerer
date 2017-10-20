// *** Item: Dagger (with buckler) ***

BEGIN ~a7_daggC~

IF ~Kit(LastTalkedToBy, A7_CHAOS_SORCERER)~ Combine.1100
  SAY @22003 /* (You hold the dagger in your hands and look for another item it can be combined with...) */
  + ~PartyHasItemIdentified("a7_clck1")~ + @22025 /* (Combine dagger with cloak.) */ + Combine.1101
  + ~PartyHasItem("a7_clck3")~ + @22025 /* (Combine dagger with cloak.) */ + Combine.1111.a

  + ~PartyHasItemIdentified("a7_helm2")~ + @22026 /* (Combine dagger with circlet.) */ + Combine.1110
  + ~PartyHasItem("a7_helm3")~ + @22026 /* (Combine dagger with circlet.) */ + Combine.1111.b

  ++ @22040 /* (Do nothing.) */ EXIT
END

IF ~!Kit(LastTalkedToBy, A7_CHAOS_SORCERER)~ Combine.Denied
  SAY @22006 /* (Without the gift to access the Elemental Chaos you are unable to unlock the item's true potential...) */
  IF ~~ EXIT
END


IF ~~ Combine.1101
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_daggC") DestroyItem("a7_clck1") CreateItem("a7_daggD", 0, 1, 3) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1110
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_daggC") DestroyItem("a7_helm2") CreateItem("a7_daggE", 0, 1, 3) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.a
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_daggC") DestroyItem("a7_clck3") CreateItem("a7_daggF", 0, 1, 4) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.b
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_daggC") DestroyItem("a7_helm3") CreateItem("a7_daggF", 0, 1, 4) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

