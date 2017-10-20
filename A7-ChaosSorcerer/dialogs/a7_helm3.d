// *** Item: Circlet (with cloak) ***

BEGIN ~a7_helm3~

IF ~Kit(LastTalkedToBy, A7_CHAOS_SORCERER)~ Combine.0011
  SAY @22001 /* (You hold the circlet in your hands and look for another item it can be combined with...) */
  + ~PartyHasItemIdentified("a7_shld4")~ + @22011 /* (Combine circlet with buckler.) */ + Combine.0111
  + ~PartyHasItem("a7_shldC")~ + @22011 /* (Combine circlet with buckler.) */ + Combine.1111.a

  + ~PartyHasItemIdentified("a7_dagg8")~ + @22012 /* (Combine circlet with dagger.) */ + Combine.1011
  + ~PartyHasItem("a7_daggC")~ + @22012 /* (Combine circlet with dagger.) */ + Combine.1111.b

  ++ @22040 /* (Do nothing.) */ EXIT
END

IF ~!Kit(LastTalkedToBy, A7_CHAOS_SORCERER)~ Combine.Denied
  SAY @22006 /* (Without the gift to access the Elemental Chaos you are unable to unlock the item's true potential...) */
  IF ~~ EXIT
END


IF ~~ Combine.0111
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm3") DestroyItem("a7_shld4") CreateItem("a7_helm7", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1011
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm3") DestroyItem("a7_dagg8") CreateItem("a7_helmB", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.a
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm3") DestroyItem("a7_shldC") CreateItem("a7_helmF", 4, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.b
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm3") DestroyItem("a7_daggC") CreateItem("a7_helmF", 4, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

