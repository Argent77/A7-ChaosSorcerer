// *** Item: Circlet (single) ***

BEGIN ~a7_helm2~

IF ~Kit(LastTalkedToBy, A7_CHAOS_SORCERER) PartyHasItemIdentified("a7_helm2")~ Combine.0010
  SAY @22001 /* (You hold the circlet in your hands and look for another item it can be combined with...) */
  + ~PartyHasItemIdentified("a7_clck1")~ + @22015 /* (Combine circlet with cloak.) */ + Combine.0011
  + ~PartyHasItem("a7_clck5")~ + @22015 /* (Combine circlet with cloak.) */ + Combine.0111.a
  + ~PartyHasItem("a7_clck9")~ + @22015 /* (Combine circlet with cloak.) */ + Combine.1011.a
  + ~PartyHasItem("a7_clckD")~ + @22015 /* (Combine circlet with cloak.) */ + Combine.1111.a

  + ~PartyHasItemIdentified("a7_shld4")~ + @22016 /* (Combine circlet with buckler.) */ + Combine.0110
  + ~PartyHasItem("a7_shld5")~ + @22016 /* (Combine circlet with buckler.) */ + Combine.0111.b
  + ~PartyHasItem("a7_shldC")~ + @22016 /* (Combine circlet with buckler.) */ + Combine.1110.a
  + ~PartyHasItem("a7_shldD")~ + @22016 /* (Combine circlet with buckler.) */ + Combine.1111.b

  + ~PartyHasItemIdentified("a7_dagg8")~ + @22017 /* (Combine circlet with dagger.) */ + Combine.1010
  + ~PartyHasItem("a7_dagg9")~ + @22017 /* (Combine circlet with dagger.) */ + Combine.1011.b
  + ~PartyHasItem("a7_daggC")~ + @22017 /* (Combine circlet with dagger.) */ + Combine.1110.b
  + ~PartyHasItem("a7_daggD")~ + @22017 /* (Combine circlet with dagger.) */ + Combine.1111.c

  ++ @22040 /* (Do nothing.) */ EXIT
END

IF ~!Kit(LastTalkedToBy, A7_CHAOS_SORCERER) PartyHasItemIdentified("a7_helm2")~ Combine.Denied
  SAY @22006 /* (Without the gift to access the Elemental Chaos you are unable to unlock the item's true potential...) */
  IF ~~ EXIT
END

IF ~!PartyHasItemIdentified("a7_helm2")~ Combine.Unknown
  SAY @22007 /* (The item has an otherworldly appearance, and you have the feeling as if it contains some hidden powers that are locked deeply within the ancient enchantments...) */
  IF ~~ EXIT
END


IF ~~ Combine.0011
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm2") DestroyItem("a7_clck1") CreateItem("a7_helm3", 2, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.0110
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm2") DestroyItem("a7_shld4") CreateItem("a7_helm6", 2, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.0111.a
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm2") DestroyItem("a7_clck5") CreateItem("a7_helm7", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.0111.b
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm2") DestroyItem("a7_shld5") CreateItem("a7_helm7", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1010
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm2") DestroyItem("a7_dagg8") CreateItem("a7_helmA", 2, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1011.a
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm2") DestroyItem("a7_clck9") CreateItem("a7_helmB", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1011.b
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm2") DestroyItem("a7_dagg9") CreateItem("a7_helmB", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1110.a
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm2") DestroyItem("a7_shldC") CreateItem("a7_helmE", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1110.b
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm2") DestroyItem("a7_daggC") CreateItem("a7_helmE", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.a
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm2") DestroyItem("a7_clckD") CreateItem("a7_helmF", 4, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.b
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm2") DestroyItem("a7_shldD") CreateItem("a7_helmF", 4, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.c
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_helm2") DestroyItem("a7_daggD") CreateItem("a7_helmF", 4, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

