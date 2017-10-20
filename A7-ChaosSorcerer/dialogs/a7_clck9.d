// *** Item: Cloak (with dagger) ***

BEGIN ~a7_clck9~

IF ~Kit(LastTalkedToBy, A7_CHAOS_SORCERER)~ Combine.1001
  SAY @22000 /* (You hold the cloak in your hands and look for another item it can be combined with...) */
  + ~PartyHasItemIdentified("a7_helm2")~ + @22010 /* (Combine cloak with circlet.) */ + Combine.1011
  + ~PartyHasItem("a7_helm6")~ + @22010 /* (Combine cloak with circlet.) */ + Combine.1111.a

  + ~PartyHasItemIdentified("a7_shld4")~ + @22011 /* (Combine cloak with buckler.) */ + Combine.1101
  + ~PartyHasItem("a7_shld6")~ + @22011 /* (Combine cloak with buckler.) */ + Combine.1111.b

  ++ @22040 /* (Do nothing.) */ EXIT
END

IF ~!Kit(LastTalkedToBy, A7_CHAOS_SORCERER)~ Combine.Denied
  SAY @22006 /* (Without the gift to access the Elemental Chaos you are unable to unlock the item's true potential...) */
  IF ~~ EXIT
END


IF ~~ Combine.1011
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck9") DestroyItem("a7_helm2") CreateItem("a7_clckB", 2, 3, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1101
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck9") DestroyItem("a7_shld4") CreateItem("a7_clckD", 2, 3, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.a
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck9") DestroyItem("a7_helm6") CreateItem("a7_clckF", 2, 4, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.b
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck9") DestroyItem("a7_shld6") CreateItem("a7_clckF", 2, 4, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

