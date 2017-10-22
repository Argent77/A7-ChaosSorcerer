// *** Item: Cloak (single) ***

BEGIN ~a7_clck1~

IF ~Kit(LastTalkedToBy, A7_CHAOS_SORCERER) PartyHasItemIdentified("a7_clck1")~ Combine.0001
  SAY @22000 /* (You hold the cloak in your hands and look for another item it can be combined with...) */
  + ~PartyHasItemIdentified("a7_helm2")~ + @22010 /* (Combine cloak with circlet.) */ + Combine.0011
  + ~PartyHasItem("a7_helm6")~ + @22010 /* (Combine cloak with circlet.) */ + Combine.0111.a
  + ~PartyHasItem("a7_helmA")~ + @22010 /* (Combine cloak with circlet.) */ + Combine.1011.a
  + ~PartyHasItem("a7_helmE")~ + @22010 /* (Combine cloak with circlet.) */ + Combine.1111.a

  + ~PartyHasItemIdentified("a7_shld4")~ + @22011 /* (Combine cloak with buckler.) */ + Combine.0101
  + ~PartyHasItem("a7_shld6")~ + @22011 /* (Combine cloak with buckler.) */ + Combine.0111.b
  + ~PartyHasItem("a7_shldC")~ + @22011 /* (Combine cloak with buckler.) */ + Combine.1101.a
  + ~PartyHasItem("a7_shldE")~ + @22011 /* (Combine cloak with buckler.) */ + Combine.1111.b

  + ~PartyHasItemIdentified("a7_dagg8")~ + @22012 /* (Combine cloak with dagger.) */ + Combine.1001
  + ~PartyHasItem("a7_daggA")~ + @22012 /* (Combine cloak with dagger.) */ + Combine.1011.b
  + ~PartyHasItem("a7_daggC")~ + @22012 /* (Combine cloak with dagger.) */ + Combine.1101.b
  + ~PartyHasItem("a7_daggE")~ + @22012 /* (Combine cloak with dagger.) */ + Combine.1111.c

  ++ @22040 /* (Do nothing.) */ EXIT
END

IF ~!Kit(LastTalkedToBy, A7_CHAOS_SORCERER) PartyHasItemIdentified("a7_clck1")~ Combine.Denied
  SAY @22006 /* (Without the gift to access the Elemental Chaos you are unable to unlock the item's true potential...) */
  IF ~~ EXIT
END

IF ~!PartyHasItemIdentified("a7_clck1")~ Combine.Unknown
  SAY @22007 /* (The item has an otherworldly appearance, and you have the feeling as if it contains some hidden powers that are locked deeply within the ancient enchantments...) */
  IF ~~ EXIT
END


IF ~~ Combine.0011
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck1") DestroyItem("a7_helm2") CreateItem("a7_clck3", 1, 2, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.0101
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck1") DestroyItem("a7_shld4") CreateItem("a7_clck5", 2, 2, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.0111.a
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck1") DestroyItem("a7_helm6") CreateItem("a7_clck7", 3, 3, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.0111.b
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck1") DestroyItem("a7_shld6") CreateItem("a7_clck7", 3, 3, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1001
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck1") DestroyItem("a7_dagg8") CreateItem("a7_clck9", 2, 2, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1011.a
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck1") DestroyItem("a7_helmA") CreateItem("a7_clckB", 3, 3, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1011.b
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck1") DestroyItem("a7_daggA") CreateItem("a7_clckB", 3, 3, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1101.a
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck1") DestroyItem("a7_shldC") CreateItem("a7_clckD", 3, 3, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1101.b
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck1") DestroyItem("a7_daggC") CreateItem("a7_clckD", 3, 3, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.a
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck1") DestroyItem("a7_helmE") CreateItem("a7_clckF", 4, 4, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.b
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck1") DestroyItem("a7_shldE") CreateItem("a7_clckF", 4, 4, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.c
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_clck1") DestroyItem("a7_daggE") CreateItem("a7_clckF", 4, 4, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

