local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ChallengeStory.Entrance.ChallengeStoryEnvironmentInfoDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChallengeStory.Entrance.ChallengeStoryEnvironmentInfoDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeStoryEnvironmentInfoPage"
L2_1 = G
L2_1 = L2_1.ChallengeStoryEnvironmentInfoDialog
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeStoryEnvironmentInfoDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2.show_update_hint = false
  A0_2.show_close_key_hint = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.override_transition_anim_type
  L3_2 = "ChallengeStoryMainPage"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UITransitionAnimType
  L4_2 = L4_2.Morph
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._custom_on_load = L1_1
return L0_1
