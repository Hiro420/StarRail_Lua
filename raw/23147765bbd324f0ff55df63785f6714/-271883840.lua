local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyJackpotResultItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2
  L4_2 = A0_2._on_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  A0_2._index = A1_2
  A0_2._has_result = A3_2
  A0_2._result = A4_2
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.get_hcoin_item_id
  L5_2 = L5_2()
  A0_2._item_id = L5_2
  A0_2._item_count = A2_2
  L5_2 = {}
  L6_2 = A0_2._item_id
  L5_2[1] = L6_2
  A0_2._config_id_list = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._refresh_view
  L5_2(L6_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMonopoly_Raffle_Reward"
  L4_2 = A0_2._index
  L4_2 = L4_2 - 1
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = "UIText_ActivityMonopoly_Raffle_Number_Hidden"
  L2_2 = A0_2._has_result
  if L2_2 then
    L2_2 = "UIText_ActivityMonopoly_Raffle_Number_Show"
    L3_2 = A0_2._index
    L3_2 = L3_2 - 1
    L1_2 = L2_2 .. L3_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_result
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L5_2 = A0_2._result
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_item
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A0_2._item_count
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_item
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._item_id
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_item
  L3_2 = L2_2
  L2_2 = L2_2.set_count
  L4_2 = A0_2._item_count
  L5_2 = nil
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L1_1._refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = A0_2._config_id_list
  L1_2.items = L2_2
  L2_2 = G
  L2_2 = L2_2.InventoryUtils
  L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
  L3_2 = L1_2
  L2_2(L3_2)
end
L1_1._on_btn_clicked = L2_1
return L1_1
