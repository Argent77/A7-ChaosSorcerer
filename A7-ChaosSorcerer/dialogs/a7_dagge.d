// *** Item: Dagger (with circlet and buckler) ***

BEGIN ~a7_daggE~

IF ~Kit(LastTalkedToBy, A7_CHAOS_SORCERER)~ Combine.1101
  SAY @22003 /* (You hold the dagger in your hands and look for another item it can be combined with...) */
  + ~PartyHasItemIdentified("a7_clck1")~ + @22025 /* (Combine dagger with cloak.) */ + Combine.1111

  ++ @22040 /* (Do nothing.) */ EXIT
END

IF ~!Kit(LastTalkedToBy, A7_CHAOS_SORCERER)~ Combine.Denied
  SAY @22006 /* (Without the gift to access the Elemental Chaos you are unable to unlock the item's true potential...) */
  IF ~~ EXIT
END


IF ~~ Combine.1111
  SAY @22030 /* (You take the cloak and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_daggE") DestroyItem("a7_clck1") CreateItem("a7_daggF", 0, 1, 4) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

