// *** Item: Buckler (with cloak) ***

BEGIN ~a7_shld5~

IF ~Kit(LastTalkedToBy, A7_CHAOS_SORCERER)~ Combine.0101
  SAY @22002 /* (You hold the buckler in your hands and look for another item it can be combined with...) */
  + ~PartyHasItemIdentified("a7_helm2")~ + @22021 /* (Combine buckler with circlet.) */ + Combine.0111
  + ~PartyHasItem("a7_helmA")~ + @22021 /* (Combine buckler with circlet.) */ + Combine.1111.a

  + ~PartyHasItemIdentified("a7_dagg8")~ + @22022 /* (Combine buckler with dagger.) */ + Combine.1101
  + ~PartyHasItem("a7_daggA")~ + @22022 /* (Combine buckler with dagger.) */ + Combine.1111.b

  ++ @22040 /* (Do nothing.) */ EXIT
END

IF ~!Kit(LastTalkedToBy, A7_CHAOS_SORCERER)~ Combine.Denied
  SAY @22006 /* (Without the gift to access the Elemental Chaos you are unable to unlock the item's true potential...) */
  IF ~~ EXIT
END


IF ~~ Combine.0111
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld5") DestroyItem("a7_helm2") CreateItem("a7_shld7", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1101
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld5") DestroyItem("a7_dagg8") CreateItem("a7_shldD", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.a
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld5") DestroyItem("a7_helmA") CreateItem("a7_shldF", 4, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.b
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld5") DestroyItem("a7_daggA") CreateItem("a7_shldF", 4, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

