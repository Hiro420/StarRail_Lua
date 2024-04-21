local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Shop.WorldShop.WorldOfferingUpgradeHintDialogBinder"
L0_1(L1_1)
L0_1 = "WorldOfferingNewFigureHint_FadeIn"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "WorldOfferingUpgradeHintDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.WorldOfferingUpgradeHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._title_text_id = A1_2
  A0_2._pre_level = A2_2
  A0_2._next_level = A3_2
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_controller
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L0_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._title_text_id
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._title_text_id
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_pre_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._pre_level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._next_level
  L1_2(L2_2, L3_2)
end
L1_1._setup_view = L2_1
return L1_1
