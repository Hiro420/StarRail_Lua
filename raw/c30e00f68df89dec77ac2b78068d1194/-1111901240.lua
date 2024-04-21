local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconDetailBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RewardItemIconDetail"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = "UIText_ItemCommonIcon_Num"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hook_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_minus_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_nav
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._on_click_callback = nil
  A0_2._on_click_callback_self = nil
  A0_2._reward_id = nil
  A0_2._config = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._reward_id = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_item_by_reward
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_prize
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_hook_mark
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A2_2.ItemID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.GetItemCountByConfigID
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._setup_name
  L8_2 = L4_2.ItemName
  L9_2 = false
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._setup_count
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
end
L0_1.setup_view_by_reward = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._config = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view_by_mission_item
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_prize
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_minus_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.ConfigID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_name
  L5_2 = L2_2.ItemName
  L6_2 = A1_2.IsHide
  if L6_2 then
    L6_2 = A1_2.Num
    L6_2 = L6_2 == 0
  end
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view_by_mission_item = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_prize
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_prize_panel_visibility = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_checked = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._on_click_callback = A1_2
  A0_2._on_click_callback_self = A2_2
end
L0_1.register_click_handler = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._on_icon_click_callback = A1_2
  A0_2._on_icon_click_callback_self = A2_2
end
L0_1.register_icon_click_handler = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._on_nav_callback = A1_2
  A0_2._on_nav_callback_self = A2_2
end
L0_1.register_nav_handler = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_click_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._on_click_callback
    L2_2 = A0_2._on_click_callback_self
    L3_2 = A0_2._reward_id
    if not L3_2 then
      L3_2 = A0_2._config
    end
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_nav_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._on_nav_callback
    L2_2 = A0_2._on_nav_callback_self
    L3_2 = A0_2._reward_id
    if not L3_2 then
      L3_2 = A0_2._config
    end
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_nav = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_by_reward_item
  L4_2 = A1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_item_by_reward = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.ConfigID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_count
  L4_2 = A1_2.Num
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_item_hide
  L4_2 = A1_2.IsHide
  if L4_2 then
    L4_2 = A1_2.Num
    L4_2 = L4_2 == 0
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind_click
  L4_2 = A0_2
  L5_2 = A0_2._on_icon_click
  L6_2 = A0_2._on_icon_click
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_auto_save_navigation
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = A1_2.Num
  L3_2 = L3_2 == 0
  L2_2.IsInFakeDisableState = L3_2
end
L0_1._setup_view_by_mission_item = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._config
  L2_2 = L2_2.Num
  if L2_2 == 0 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = not A1_2
  L2_2.IsInFakeDisableState = L3_2
end
L0_1.set_fade_disable_state = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_SelectMissionItem_Select_Hidden_ItemName"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_name = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_count_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_count
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_count = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_root
  L4_2 = L4_2.gameObject
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._on_icon_click_callback
  if L2_2 ~= nil then
    L2_2 = A0_2._on_icon_click_callback
    L3_2 = A0_2._on_icon_click_callback_self
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_icon_click = L3_1
return L0_1
