local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSellPreviewPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._super_rare_relic_as_exp = false
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A2_2 or nil
  if not A2_2 then
    L3_2 = false
  end
  A0_2._super_rare_relic_as_exp = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._init_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RelicUtils
  L2_2 = L2_2.get_sell_return_items
  L3_2 = A1_2
  L4_2 = A0_2._super_rare_relic_as_exp
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.res_data = L2_2
end
L0_1._init_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.RightBumper
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_right_bumper_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.show_preview_dialog
  L1_2(L2_2)
end
L0_1._on_right_bumper_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node
  L1_2(L2_2)
  L1_2 = {}
  A0_2._config_id_list = L1_2
  L1_2 = 1
  L2_2 = ipairs
  L3_2 = A0_2.res_data
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_material_list
    L7_2 = #L7_2
    if L1_2 > L7_2 then
      L7_2 = G
      L7_2 = L7_2.SuperDebug
      L7_2 = L7_2.LogErrorFormat
      L8_2 = "\229\136\134\232\167\163\232\142\183\229\190\151\231\137\169\229\147\129\231\167\141\231\177\187\228\184\141\232\131\189\232\182\133\232\191\135%d\231\167\141,\232\175\183\231\173\150\229\136\146\230\163\128\230\159\165\233\133\141\231\189\174!!!"
      L9_2 = A0_2._binder
      L9_2 = L9_2.node_material_list
      L9_2 = #L9_2
      L7_2(L8_2, L9_2)
      return
    end
    L7_2 = A0_2._binder
    L7_2 = L7_2.return_item_panel
    L7_2 = L7_2[L1_2]
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = L6_2.ItemID
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.return_item_panel
    L7_2 = L7_2[L1_2]
    L8_2 = L7_2
    L7_2 = L7_2.set_count
    L9_2 = L6_2.Num
    L7_2(L8_2, L9_2)
    L1_2 = L1_2 + 1
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._config_id_list
    L9_2 = L6_2.ItemID
    L7_2(L8_2, L9_2)
  end
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  if L1_2 ~= nil then
    L1_2 = A0_2._config_id_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1.show_preview_dialog = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.get_table_length
  L2_2 = A0_2.res_data
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = 0 < L1_2
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_material_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_material_list
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = L5_2 <= L1_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_node = L1_1
return L0_1
