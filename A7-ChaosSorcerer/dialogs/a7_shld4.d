// *** Item: Buckler (single) ***

BEGIN ~a7_shld4~

IF ~Kit(LastTalkedToBy, A7_CHAOS_SORCERER) PartyHasItemIdentified("a7_shld4")~ Combine.0100
  SAY @22002 /* (You hold the buckler in your hands and look for another item it can be combined with...) */
  + ~PartyHasItemIdentified("a7_clck1")~ + @22020 /* (Combine buckler with cloak.) */ + Combine.0101
  + ~PartyHasItem("a7_clck3")~ + @22020 /* (Combine buckler with cloak.) */ + Combine.0111.a
  + ~PartyHasItem("a7_clck9")~ + @22020 /* (Combine buckler with cloak.) */ + Combine.1101.a
  + ~PartyHasItem("a7_clckB")~ + @22020 /* (Combine buckler with cloak.) */ + Combine.1111.a

  + ~PartyHasItemIdentified("a7_helm2")~ + @22021 /* (Combine buckler with circlet.) */ + Combine.0110
  + ~PartyHasItem("a7_helm3")~ + @22021 /* (Combine buckler with circlet.) */ + Combine.0111.b
  + ~PartyHasItem("a7_helmA")~ + @22021 /* (Combine buckler with circlet.) */ + Combine.1110.a
  + ~PartyHasItem("a7_helmB")~ + @22021 /* (Combine buckler with circlet.) */ + Combine.1111.b

  + ~PartyHasItemIdentified("a7_dagg8")~ + @22022 /* (Combine buckler with dagger.) */ + Combine.1100
  + ~PartyHasItem("a7_dagg9")~ + @22022 /* (Combine buckler with dagger.) */ + Combine.1101.b
  + ~PartyHasItem("a7_daggA")~ + @22022 /* (Combine buckler with dagger.) */ + Combine.1110.b
  + ~PartyHasItem("a7_daggB")~ + @22022 /* (Combine buckler with dagger.) */ + Combine.1111.c

  ++ @22040 /* (Do nothing.) */ EXIT
END

IF ~!Kit(LastTalkedToBy, A7_CHAOS_SORCERER) PartyHasItemIdentified("a7_shld4")~ Combine.Denied
  SAY @22006 /* (Without the gift to access the Elemental Chaos you are unable to unlock the item's true potential...) */
  IF ~~ EXIT
END

IF ~!PartyHasItemIdentified("a7_shld4")~ Combine.Unknown
  SAY @22007 /* (The item has an otherworldly appearance, and you have the feeling as if it contains some hidden powers that are locked deeply within the ancient enchantments...) */
  IF ~~ EXIT
END


IF ~~ Combine.0101
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld4") DestroyItem("a7_clck1") CreateItem("a7_shld5", 2, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.0110
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld4") DestroyItem("a7_helm2") CreateItem("a7_shld6", 2, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.0111.a
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld4") DestroyItem("a7_clck3") CreateItem("a7_shld7", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.0111.b
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld4") DestroyItem("a7_helm3") CreateItem("a7_shld7", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1100
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld4") DestroyItem("a7_dagg8") CreateItem("a7_shldC", 2, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1101.a
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld4") DestroyItem("a7_clck9") CreateItem("a7_shldD", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1101.b
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld4") DestroyItem("a7_dagg9") CreateItem("a7_shldD", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1110.a
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld4") DestroyItem("a7_helmA") CreateItem("a7_shldE", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1110.b
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld4") DestroyItem("a7_daggA") CreateItem("a7_shldE", 3, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.a
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld4") DestroyItem("a7_clckB") CreateItem("a7_shldF", 4, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.b
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld4") DestroyItem("a7_helmB") CreateItem("a7_shldF", 4, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.c
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld4") DestroyItem("a7_daggB") CreateItem("a7_shldF", 4, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

