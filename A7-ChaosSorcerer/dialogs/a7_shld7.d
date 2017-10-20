// *** Item: Buckler (with cloak and circlet) ***

BEGIN ~a7_shld7~

IF ~Kit(LastTalkedToBy, A7_CHAOS_SORCERER)~ Combine.0111
  SAY @22002 /* (You hold the buckler in your hands and look for another item it can be combined with...) */
  + ~PartyHasItemIdentified("a7_dagg8")~ + @22022 /* (Combine buckler with dagger.) */ + Combine.1111

  ++ @22040 /* (Do nothing.) */ EXIT
END

IF ~!Kit(LastTalkedToBy, A7_CHAOS_SORCERER)~ Combine.Denied
  SAY @22006 /* (Without the gift to access the Elemental Chaos you are unable to unlock the item's true potential...) */
  IF ~~ EXIT
END


IF ~~ Combine.1111
  SAY @22033 /* (You take the dagger and concentrate on your task.) */
  = @22041 /* (Channelling raw energy from the Elemental Chaos directly into the items causes them to lose their form, only to re-emerge moments later as a new, more powerful item.) */
  IF ~~ DO ~DestroyItem("a7_shld7") DestroyItem("a7_dagg8") CreateItem("a7_shldF", 4, 0, 0) CreateVisualEffectObject("SPCRTWPN", LastTalkedToBy)~ EXIT
END

