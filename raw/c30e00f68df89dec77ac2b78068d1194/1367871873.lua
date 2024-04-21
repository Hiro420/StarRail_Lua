local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDiceInfoRulePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDiceInfoRulePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.title
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_root_btn_select
    L0_3(L1_3)
  end
  L3_2.onSelectTrigger = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.underline_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A2_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_callback_self = A2_2
end
L0_1.register_select_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.underline_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_extra_info_available
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = {}
    L4_2 = "ActionGroup_BuffDetail"
    L5_2 = "ActionGroup_Return"
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = {}
    L4_2 = "ActionGroup_Return"
    L3_2[1] = L4_2
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._select_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._select_callback
    L2_2 = A0_2._select_callback_self
    L1_2(L2_2)
  end
end
L0_1._on_root_btn_select = L1_1
return L0_1
