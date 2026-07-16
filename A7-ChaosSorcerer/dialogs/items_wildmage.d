// *** Dialog patches to make Primordial Artifacts available to Wild Mages ***

REPLACE_TRIGGER_TEXT ~%dlg_resref%~ ~[^!]Kit(LastTalkedToBy,A7_CHAOS_SORCERER)~ ~OR(2) Kit(LastTalkedToBy,A7_CHAOS_SORCERER) Kit(LastTalkedToBy,WILDMAGE)~
REPLACE_TRIGGER_TEXT ~%dlg_resref%~ ~!Kit(LastTalkedToBy,A7_CHAOS_SORCERER)~ ~!Kit(LastTalkedToBy,A7_CHAOS_SORCERER) !Kit(LastTalkedToBy,WILDMAGE)~
