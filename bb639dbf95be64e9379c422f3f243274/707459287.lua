local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyMiniGameRuleTipPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rule_tip
  L4_2 = A0_2._on_btn_rule_tip
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L0_1.GameInfo
  L4_2 = L3_2
  L3_2 = L3_2.TryGetMonopolyGameData
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._game_data = L3_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A0_2._game_data
  L4_2 = L4_2.ResourceIDList
  L3_2 = L3_2(L4_2)
  A0_2._resource_id = L3_2
  A0_2._mid_text = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = ipairs
  L2_2 = A0_2._resource_id
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panels_item
    L6_2 = L6_2[L4_2]
    if L6_2 ~= nil then
      L7_2 = L0_1.GameInfo
      L8_2 = L7_2
      L7_2 = L7_2.TryGetMonopolyGameResourceData
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = A0_2._game_data
      L9_2 = L8_2
      L8_2 = L8_2.GetResourceValue
      L10_2 = L5_2
      L8_2 = L8_2(L9_2, L10_2)
      L10_2 = L6_2
      L9_2 = L6_2.setup_view
      L11_2 = L7_2
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  L1_2 = A0_2._resource_id
  L1_2 = #L1_2
  L1_2 = L1_2 + 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_item
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panels_item
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.safe_set_active
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L1_1._refresh_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._game_data = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2.ResourceIDList
  L2_2 = L2_2(L3_2)
  A0_2._resource_id = L2_2
  A0_2._mid_text = nil
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L1_1.setup_view_by_game_data = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_btn_rule_tip = L2_1
return L1_1
