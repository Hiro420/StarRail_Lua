local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PromotionPreviewDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._btn_cost_list
  L1_2 = L1_2[1]
  if L1_2 ~= nil then
    L1_2 = A0_2._btn_cost_list
    L1_2 = L1_2[1]
    L1_2 = L1_2.Button
    L1_2 = L1_2.gameObject
    return L1_2
  else
    L1_2 = A0_2._btn_reward_list
    L1_2 = L1_2[1]
    if L1_2 ~= nil then
      L1_2 = A0_2._btn_reward_list
      L1_2 = L1_2[1]
      L1_2 = L1_2.Button
      L1_2 = L1_2.gameObject
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_material_cost
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_cost_material_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive_reward
  L4_2 = A0_2._on_send_receive_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InventoryModule
  L1_2 = L1_2.GetItemRow
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.ConvCsEnumToNum
  L3_2 = CS
  L3_2 = L3_2.HJLLLAFEOHH
  L3_2 = L3_2.AJNPKBJMOKL
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_cash_cost
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = {}
  A0_2._btn_cost_list = L2_2
  L2_2 = {}
  A0_2._btn_reward_list = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._take_reward_callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_take_reward_callback = L2_1
function L2_1(A0_2, A1_2)
  A0_2._is_promoted = A1_2
end
L0_1.set_is_promoted = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._btn_cost_list = L1_2
  L1_2 = {}
  A0_2._btn_reward_list = L1_2
end
L0_1.clear_btn_list = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_title = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_sub_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_sub_title = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  A0_2._material_table = L2_2
  L2_2 = nil
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.ItemID
    L8_2 = G
    L8_2 = L8_2.UtilEngineWrap
    L8_2 = L8_2.ConvCsEnumToNum
    L9_2 = CS
    L9_2 = L9_2.HJLLLAFEOHH
    L9_2 = L9_2.AJNPKBJMOKL
    L8_2 = L8_2(L9_2)
    if L7_2 ~= L8_2 then
      L7_2 = {}
      L8_2 = A1_2[L6_2]
      L8_2 = L8_2.ItemID
      L7_2.ID = L8_2
      L8_2 = A1_2[L6_2]
      L8_2 = L8_2.ItemNum
      L7_2.Num = L8_2
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._material_table
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    else
      L7_2 = A1_2[L6_2]
      L2_2 = L7_2.ItemNum
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_cash_cost
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 ~= nil
  L3_2(L4_2, L5_2)
  if L2_2 ~= nil then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.GetItemCountByConfigID
    L5_2 = G
    L5_2 = L5_2.UtilEngineWrap
    L5_2 = L5_2.ConvCsEnumToNum
    L6_2 = CS
    L6_2 = L6_2.HJLLLAFEOHH
    L6_2 = L6_2.AJNPKBJMOKL
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    if L2_2 > L3_2 then
      L4_2 = A0_2._is_promoted
      if not L4_2 then
        L4_2 = string
        L4_2 = L4_2.format
        L5_2 = "<color=\"#C84A32\">%s</color>"
        L6_2 = L2_2
        L4_2 = L4_2(L5_2, L6_2)
        L2_2 = L4_2
    end
    else
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "<color=\"#000000\">%s</color>"
      L6_2 = L2_2
      L4_2 = L4_2(L5_2, L6_2)
      L2_2 = L4_2
    end
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_cash_cost
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.sort_reward_item
  L4_2 = A0_2._material_table
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_view_material_cost
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._material_table
  L5_2 = #L5_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_view_material_cost
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L0_1.setup_promotion_cost_material = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reward
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2 ~= nil
  L3_2(L4_2, L5_2)
  if A1_2 == nil then
    return
  end
  L3_2 = {}
  A0_2._reward_table = L3_2
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.CreateRewardItemTable
  L4_2 = A1_2.PromotionRewardId
  L3_2 = L3_2(L4_2)
  A0_2._reward_table = L3_2
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.sort_reward_item
  L4_2 = A0_2._reward_table
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_view_reward
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._reward_table
  L5_2 = #L5_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_view_reward
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_receive
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_promoted
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._is_promoted
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_receive_reward
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = not A2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_received
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_list_navigation_static
  L1_2(L2_2)
end
L0_1.set_item_navi = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._material_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ID
  L5_2(L6_2, L7_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetItemCountByConfigID
  L7_2 = A0_2._material_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ID
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2._is_promoted
  if L6_2 then
    L7_2 = L4_2
    L6_2 = L4_2.set_count
    L8_2 = A0_2._material_table
    L9_2 = A2_2 + 1
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.Num
    L6_2(L7_2, L8_2)
  else
    L7_2 = L4_2
    L6_2 = L4_2.set_count_with_total
    L8_2 = L5_2
    L9_2 = A0_2._material_table
    L10_2 = A2_2 + 1
    L9_2 = L9_2[L10_2]
    L9_2 = L9_2.Num
    L10_2 = true
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L6_2 = false
  L7_2 = 1
  L8_2 = A0_2._btn_cost_list
  L8_2 = #L8_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = A0_2._btn_cost_list
    L11_2 = L11_2[L10_2]
    L11_2 = L11_2.Index
    L12_2 = A0_2._material_table
    L13_2 = A2_2 + 1
    L12_2 = L12_2[L13_2]
    L12_2 = L12_2.ID
    if L11_2 == L12_2 then
      L6_2 = true
      break
    end
  end
  if L6_2 == false then
    L7_2 = {}
    L8_2 = A0_2._material_table
    L9_2 = A2_2 + 1
    L8_2 = L8_2[L9_2]
    L8_2 = L8_2.ID
    L7_2.Index = L8_2
    L8_2 = L4_2._binder
    L8_2 = L8_2.button
    L7_2.Button = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._btn_cost_list
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = G
    L8_2 = L8_2.SuperDebug
    L8_2 = L8_2.LogFormat
    L9_2 = "hekun Debug: _on_cost_material_changed(), self._btn_cost_list Count : "
    L10_2 = A0_2._btn_cost_list
    L10_2 = #L10_2
    L9_2 = L9_2 .. L10_2
    L8_2(L9_2)
  end
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.LayoutRebuilder
  L7_2 = L7_2.ForceRebuildLayoutImmediate
  L8_2 = L4_2._binder
  L8_2 = L8_2.root
  L7_2(L8_2)
  return L3_2
end
L0_1._on_cost_material_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reward_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.ItemID
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_count
  L7_2 = A0_2._reward_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.Count
  L5_2(L6_2, L7_2)
  L5_2 = false
  L6_2 = 1
  L7_2 = A0_2._btn_reward_list
  L7_2 = #L7_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = A0_2._btn_reward_list
    L10_2 = L10_2[L9_2]
    L10_2 = L10_2.Index
    L11_2 = A0_2._reward_table
    L12_2 = A2_2 + 1
    L11_2 = L11_2[L12_2]
    L11_2 = L11_2.ItemID
    if L10_2 == L11_2 then
      L5_2 = true
      break
    end
  end
  if L5_2 == false then
    L6_2 = {}
    L7_2 = A0_2._reward_table
    L8_2 = A2_2 + 1
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2.ItemID
    L6_2.Index = L7_2
    L7_2 = L4_2._binder
    L7_2 = L7_2.button
    L6_2.Button = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._btn_reward_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L4_2._binder
  L7_2 = L7_2.root
  L6_2(L7_2)
  return L3_2
end
L0_1._on_reward_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._take_reward_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._take_reward_callback
      L2_2 = A0_2._callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_send_receive_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "hekun Debug: _setup_btn_list_navigation_static(), self._btn_cost_list Count : "
  L3_2 = A0_2._btn_cost_list
  L3_2 = #L3_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = A0_2._btn_cost_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._btn_cost_list
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.Button
    L5_2 = L5_2.navigation
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.UI
    L6_2 = L6_2.Navigation
    L6_2 = L6_2.Mode
    L6_2 = L6_2.Explicit
    L5_2.mode = L6_2
  end
  L1_2 = 1
  L2_2 = A0_2._btn_reward_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._btn_reward_list
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.Button
    L5_2 = L5_2.navigation
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.UI
    L6_2 = L6_2.Navigation
    L6_2 = L6_2.Mode
    L6_2 = L6_2.Explicit
    L5_2.mode = L6_2
  end
  L1_2 = 1
  L2_2 = A0_2._btn_cost_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = A0_2._btn_cost_list
    L7_2 = L7_2[L4_2]
    L8_2 = nil
    L9_2 = A0_2._btn_reward_list
    L9_2 = L9_2[1]
    L10_2 = A0_2._btn_cost_list
    L11_2 = L4_2 - 1
    L10_2 = L10_2[L11_2]
    L11_2 = A0_2._btn_cost_list
    L12_2 = L4_2 + 1
    L11_2 = L11_2[L12_2]
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L1_2 = 1
  L2_2 = A0_2._btn_reward_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._set_single_btn_navigation
    L7_2 = A0_2._btn_reward_list
    L7_2 = L7_2[L4_2]
    L8_2 = A0_2._btn_cost_list
    L8_2 = L8_2[1]
    L9_2 = nil
    L10_2 = A0_2._btn_reward_list
    L11_2 = L4_2 - 1
    L10_2 = L10_2[L11_2]
    L11_2 = A0_2._btn_reward_list
    L12_2 = L4_2 + 1
    L11_2 = L11_2[L12_2]
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1._setup_btn_list_navigation_static = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = A1_2.Button
  L6_2 = L6_2.navigation
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.Navigation
  L7_2 = L7_2.Mode
  L7_2 = L7_2.Explicit
  L6_2.mode = L7_2
  if A2_2 ~= nil then
    L7_2 = A2_2.Button
    L7_2 = L7_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L8_2 = A2_2.Button
    L6_2.selectOnUp = L8_2
  end
  if A3_2 ~= nil then
    L7_2 = A3_2.Button
    L7_2 = L7_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L8_2 = A3_2.Button
    L6_2.selectOnDown = L8_2
  end
  if A4_2 ~= nil then
    L7_2 = A4_2.Button
    L7_2 = L7_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L8_2 = A4_2.Button
    L6_2.selectOnLeft = L8_2
  end
  if A5_2 ~= nil then
    L7_2 = A5_2.Button
    L7_2 = L7_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L8_2 = A5_2.Button
    L6_2.selectOnRight = L8_2
  end
  L7_2 = A1_2.Button
  L7_2.navigation = L6_2
end
L0_1._set_single_btn_navigation = L2_1
return L0_1
