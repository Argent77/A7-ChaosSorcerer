// *** Item: Dagger (single) ***

BEGIN ~a7_dagg8~

IF ~Kit(LastTalkedToBy, A7_CHAOS_SORCERER) PartyHasItemIdentified("a7_dagg8")~ Combine.1000
  SAY @22003 /* (You hold the dagger in your hands and look for another item it can be combined with...) */
  + ~PartyHasItemIdentified("a7_clck1")~ + @22025 /* (Combine dagger with cloak.) */ + Combine.1001
  + ~PartyHasItem("a7_clck3")~ + @22025 /* (Combine dagger with cloak.) */ + Combine.1011.a
  + ~PartyHasItem("a7_clck5")~ + @22025 /* (Combine dagger with cloak.) */ + Combine.1101.a
  + ~PartyHasItem("a7_clck7")~ + @22025 /* (Combine dagger with cloak.) */ + Combine.1111.a

  + ~PartyHasItemIdentified("a7_helm2")~ + @22026 /* (Combine dagger with circlet.) */ + Combine.1010
  + ~PartyHasItem("a7_helm3")~ + @22026 /* (Combine dagger with circlet.) */ + Combine.1011.b
  + ~PartyHasItem("a7_helm6")~ + @22026 /* (Combine dagger with circlet.) */ + Combine.1110.a
  + ~PartyHasItem("a7_helm7")~ + @22026 /* (Combine dagger with circlet.) */ + Combine.1111.b

  + ~PartyHasItemIdentified("a7_shld4")~ + @22027 /* (Combine dagger with buckler.) */ + Combine.1100
  + ~PartyHasItem("a7_shld5")~ + @22027 /* (Combine dagger with buckler.) */ + Combine.1101.b
  + ~PartyHasItem("a7_shld6")~ + @22027 /* (Combine dagger with buckler.) */ + Combine.1110.b
  + ~PartyHasItem("a7_shld7")~ + @22027 /* (Combine dagger with buckler.) */ + Combine.1111.c

  ++ @22040 /* (Do nothing.) */ EXIT
END

IF ~!Kit(LastTalkedToBy, A7_CHAOS_SORCERER) PartyHasItemIdentified("a7_dagg8")~ Combine.Denied
  SAY @22006 /* (Without the gift to access the Elemental Chaos you are unable to unlock the item's true potential...) */
  IF ~~ EXIT
END

IF ~!PartyHasItemIdentified("a7_dagg8")~ Combine.Unknown
  SAY @22007 /* (The item has an otherworldly appearance, and you have the feeling as if it contains some hidden powers that are locked deeply within the ancient enchantments...) */
  IF ~~ EXIT
END


IF ~~ Combine.1001
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_dagg8") DestroyItem("a7_clck1") CreateItem("a7_dagg9", 0, 1, 2) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1010
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_dagg8") DestroyItem("a7_helm2") CreateItem("a7_daggA", 0, 1, 2) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1011.a
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_dagg8") DestroyItem("a7_clck3") CreateItem("a7_daggB", 0, 1, 3) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1011.b
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_dagg8") DestroyItem("a7_helm3") CreateItem("a7_daggB", 0, 1, 3) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1100
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_dagg8") DestroyItem("a7_shld4") CreateItem("a7_daggC", 0, 1, 2) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1101.a
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_dagg8") DestroyItem("a7_clck5") CreateItem("a7_daggD", 0, 1, 3) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1101.b
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_dagg8") DestroyItem("a7_shld5") CreateItem("a7_daggD", 0, 1, 3) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1110.a
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_dagg8") DestroyItem("a7_helm6") CreateItem("a7_daggE", 0, 1, 3) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1110.b
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_dagg8") DestroyItem("a7_shld6") CreateItem("a7_daggE", 0, 1, 3) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.a
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_dagg8") DestroyItem("a7_clck7") CreateItem("a7_daggF", 0, 1, 4) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.b
  SAY @22031 /* (You take the circlet and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_dagg8") DestroyItem("a7_helm7") CreateItem("a7_daggF", 0, 1, 4) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

IF ~~ Combine.1111.c
  SAY @22032 /* (You take the buckler and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_dagg8") DestroyItem("a7_shld7") CreateItem("a7_daggF", 0, 1, 4) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

