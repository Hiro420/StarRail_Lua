local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.CommonComponents.RogueEndlessMapEnvInfoDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEndlessMapEnvInfoDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueEndlessMapEnvInfoDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._rogue_endless_area_data = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._rogue_endless_area_data = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._rogue_endless_area_data
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._setup_effect_view
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.create_lua_table_from_cs_list
    L4_2 = A0_2._rogue_endless_area_data
    L4_2 = L4_2.MechanismTexts
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = #A1_2
  L2_2 = 0 < L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mechanism
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = ipairs
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_mechanism_items
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = #A1_2
      L8_2 = L6_2 <= L8_2
      L10_2 = L7_2
      L9_2 = L7_2.SafeSetActive
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
      if L8_2 then
        L9_2 = A0_2._binder
        L9_2 = L9_2.txt_mechanism_items
        L9_2 = L9_2[L6_2]
        L10_2 = L9_2
        L9_2 = L9_2.SetCustomizedText
        L11_2 = A1_2[L6_2]
        L9_2(L10_2, L11_2)
      end
    end
  end
end
L0_1._setup_effect_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L1_1
return L0_1
