local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyJackpotProgressItemPanel"
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
  L1_2 = L1_2.btn_reward
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_reward
    L4_2 = A0_2._on_btn_reward
    L1_2(L2_2, L3_2, L4_2)
  end
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = math
  L3_2 = L3_2.modf
  L4_2 = A1_2 / 10
  L3_2 = L3_2(L4_2)
  L4_2 = pairs
  L5_2 = A0_2._binder
  L5_2 = L5_2.txts_progress
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.SafeSetTextID
    L11_2 = "UIText_ActivityMonopoly_Common_PercentValue"
    L12_2 = L3_2
    L9_2(L10_2, L11_2, L12_2)
  end
  L4_2 = L0_1.JackpotInfo
  L4_2 = L4_2.Progress
  L4_2 = A1_2 <= L4_2
  L5_2 = pairs
  L6_2 = A0_2._binder
  L6_2 = L6_2.nodes_not_reached
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = L9_2
    L10_2 = L9_2.SafeSetActive
    L12_2 = not L4_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = pairs
  L6_2 = A0_2._binder
  L6_2 = L6_2.nodes_reached
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = L9_2
    L10_2 = L9_2.SafeSetActive
    L12_2 = L4_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = {}
  A0_2._config_id_list = L5_2
  if A2_2 ~= nil then
    L5_2 = G
    L5_2 = L5_2.RewardUtils
    L5_2 = L5_2.CreateConfigIDList
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = {}
    end
    A0_2._config_id_list = L5_2
    L5_2 = G
    L5_2 = L5_2.RewardUtils
    L5_2 = L5_2.CreateRewardItemTableSorted
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L5_2 = {}
    end
    L6_2 = L5_2[1]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ItemExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2.ItemID
    L7_2 = L7_2(L8_2)
    L9_2 = A0_2
    L8_2 = A0_2._async_load_sprite_to
    L10_2 = A0_2._binder
    L10_2 = L10_2.img
    L11_2 = L7_2.ItemIconPath
    L8_2(L9_2, L10_2, L11_2)
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.show_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
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
L1_1._on_btn_reward = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reward
  return L1_2
end
L1_1.get_first_selected_btn = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reward
  L1_2 = L1_2.gameObject
  return L1_2
end
L1_1.get_first_selected_object = L2_1
return L1_1
