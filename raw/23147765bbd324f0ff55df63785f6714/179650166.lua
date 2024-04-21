local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Adventure.ChallengeSuccessToastDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeSuccessToastDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeSuccessToastDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._main_text = A1_2
  A0_2._sub_text = A2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "LabyrinthPlayHint_FadeIn"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_in_anim_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_main
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._main_text
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._sub_text
  if L1_2 ~= nil then
    L1_2 = A0_2._sub_text
    L2_2 = L1_2
    L1_2 = L1_2.IsEmpty
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_sub
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_sub
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = A0_2._sub_text
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_sub
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_disposing
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_fade_in_anim_end = L1_1
return L0_1
