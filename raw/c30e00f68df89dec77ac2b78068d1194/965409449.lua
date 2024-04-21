local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RollShop.MazeGachaBoxPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RollShop.MazeGachaBoxRewardHintDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RollShopModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "MazeGachaBoxPage"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MazeGachaBoxPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.GetRollShop
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._roll_shop = L4_2
  A0_2._ui_curve = A2_2
  A0_2._curve_duration = A3_2
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 35
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.gacha_btn
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L2_3 = A0_3
    L1_3 = A0_3._set_closable
    L3_3 = false
    L1_3(L2_3, L3_3)
    L2_3 = A0_3
    L1_3 = A0_3._show_rolling_tips
    L1_3(L2_3)
    L2_3 = A0_3
    L1_3 = A0_3._send_gacha_request
    L3_3 = 1
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.gacha5_btn
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L2_3 = A0_3
    L1_3 = A0_3._set_closable
    L3_3 = false
    L1_3(L2_3, L3_3)
    L2_3 = A0_3
    L1_3 = A0_3._show_rolling_tips
    L1_3(L2_3)
    L2_3 = A0_3
    L1_3 = A0_3._send_gacha_request
    L3_3 = 5
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_close_btn
  function L4_2(A0_3)
    local L1_3, L2_3
    L2_3 = A0_3
    L1_3 = A0_3._refresh_gacha_panel
    L1_3(L2_3)
    L2_3 = A0_3
    L1_3 = A0_3._show_gacha_panel
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.subtitle
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._roll_shop
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.coin_cost_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._roll_shop
  L3_2 = L3_2.CostItemNum
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.coin5_cost_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._roll_shop
  L3_2 = L3_2.CostItemNum
  L3_2 = L3_2 * 5
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.coin_icon
  L4_2 = A0_2._roll_shop
  L4_2 = L4_2.CostItem
  L4_2 = L4_2.ItemIconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.coin5_icon
  L4_2 = A0_2._roll_shop
  L4_2 = L4_2.CostItem
  L4_2 = L4_2.ItemIconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_top_bar
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_gacha_reward_lists
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_mono
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gacha_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_gacha_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = {}
  L4_2 = A0_2._binder
  L4_2 = L4_2.gacha_btn
  L5_2 = A0_2._binder
  L5_2 = L5_2.gacha5_btn
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIDoGachaInRollShopScRsp
  L4_2 = A0_2._start_rolling
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIDoGachaInRollShopScRspFail
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L2_3 = A0_3
    L1_3 = A0_3._set_closable
    L3_3 = true
    L1_3(L2_3, L3_3)
    L2_3 = A0_3
    L1_3 = A0_3._refresh_gacha_panel
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_closable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_gacha_panel
  L1_2(L2_2)
end
L2_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = nil
  return L1_2
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_enter_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_navigation_target
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_leave_special_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._open_reward_detail_dialog
    L2_2(L3_2)
  end
end
L2_1._on_in_control_action_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.TryUnblockFixedTime
  L4_2 = A0_2._block_id
  L2_2(L3_2, L4_2)
  if not A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_UIManager
    L3_2 = L2_2
    L2_2 = L2_2.BlockFixedTime
    L4_2 = A0_2._curve_duration
    L4_2 = L4_2 + 15
    L5_2 = A0_2._curve_duration
    L5_2 = L5_2 + 15
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._block_id = L2_2
  end
end
L2_1._set_closable = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.gacha_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L2_1._show_gacha_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.gacha_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L2_1._show_reward_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.gacha_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.gacha5_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rolling_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L2_1._show_rolling_tips = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.bg_rolling_mask
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_head
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Color
  L2_2 = L2_2.white
  L1_2.color = L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = A0_2._roll_shop
  L3_2 = L3_2.CostItemID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._roll_shop
  L2_2 = L2_2.CostItemNum
  L2_2 = L1_2 >= L2_2
  L3_2 = A0_2._roll_shop
  L3_2 = L3_2.CostItemNum
  L3_2 = L3_2 * 5
  L3_2 = L1_2 >= L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.gacha_btn
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.gacha5_btn
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.MissionModule
  L5_2 = 1030302
  L7_2 = L4_2
  L6_2 = L4_2.GetMainMissionDataWithPromise
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L6_2
  L6_2 = L6_2.ThenLuaActionOneParam
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3
    if not A0_3 then
      L1_3 = G
      L1_3 = L1_3.SuperDebug
      L1_3 = L1_3.LogWarning
      L2_3 = "[RollShop] \232\142\183\229\143\150\228\187\187\229\138\161\231\138\182\230\128\129\229\164\177\232\180\165! MainMissionID="
      L3_3 = L5_2
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
    end
    L1_3 = A0_2._binder
    L1_3 = L1_3.gacha5_btn
    L2_3 = L1_3
    L1_3 = L1_3.SafeSetActive
    L3_3 = A0_3.IsFinish
    L1_3(L2_3, L3_3)
  end
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.gacha_btn
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetInteractable
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.gacha5_btn
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetInteractable
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.rolling_tips
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = ipairs
  L7_2 = A0_2._binder
  L7_2 = L7_2.gacha_groups_focus
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L12_2 = L10_2
    L11_2 = L10_2.SafeSetActive
    L13_2 = false
    L11_2(L12_2, L13_2)
  end
  L6_2 = ipairs
  L7_2 = A0_2._binder
  L7_2 = L7_2.gacha_groups_mask1
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L12_2 = L10_2
    L11_2 = L10_2.SafeSetActive
    L13_2 = false
    L11_2(L12_2, L13_2)
  end
  L6_2 = ipairs
  L7_2 = A0_2._binder
  L7_2 = L7_2.gacha_groups_mask2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L12_2 = L10_2
    L11_2 = L10_2.SafeSetActive
    L13_2 = false
    L11_2(L12_2, L13_2)
  end
  L6_2 = ipairs
  L7_2 = A0_2._binder
  L7_2 = L7_2.gacha_reward_lists
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L12_2 = L10_2
    L11_2 = L10_2.RefreshAllShownItem
    L11_2(L12_2)
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.remain_t1_reward_num
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = A0_2._roll_shop
  L9_2 = L8_2
  L8_2 = L8_2.GetRemainT1RewardCount
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.total_t1_reward_num
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = A0_2._roll_shop
  L8_2 = L8_2.T1RewardGroup
  L8_2 = L8_2.RewardIDs
  L8_2 = L8_2.Count
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.frame_effect_loop
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.frame_effect_burst
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.frame_effect_reward
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.gacha_group4_anim
  L7_2 = L6_2
  L6_2 = L6_2.Play
  L8_2 = "GachaBoxInfoRowRank4_Loop"
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.gacha_group3_anim
  L7_2 = L6_2
  L6_2 = L6_2.Play
  L8_2 = "GachaBoxInfoRowRank3_Loop"
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.gacha_group2_anim
  L7_2 = L6_2
  L6_2 = L6_2.Stop
  L6_2(L7_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.gacha_group1_anim
  L7_2 = L6_2
  L6_2 = L6_2.Stop
  L6_2(L7_2)
end
L2_1._refresh_gacha_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.top_bar_area
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "MazeGachaBoxPage01"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.intro_btn
  L2_2 = A0_2._roll_shop
  L2_2 = L2_2.IntroduceID
  L1_2.IntroduceID = L2_2
end
L2_1._setup_top_bar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono
  L2_2 = A0_2._curve_duration
  L1_2.Duration = L2_2
  L1_2.WaitSeconds = 2.5
  L2_2 = A0_2._ui_curve
  L1_2.Curve = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_rolling_gacha_groups_focus
  L2_2 = L2_2(L3_2)
  L1_2.GachaGroupsFocus = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_rolling_gacha_groups_mask1
  L2_2 = L2_2(L3_2)
  L1_2.GachaGroupsMask1 = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_rolling_gacha_groups_mask2
  L2_2 = L2_2(L3_2)
  L1_2.GachaGroupsMask2 = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.OnStopRolling
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._play_getting_reward_effect
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._roll_shop
  L2_2 = L2_2.ShouldExitAfterRolling
  if L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.OnFinish
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._auto_exit
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2)
  else
    L3_2 = L1_2
    L2_2 = L1_2.OnFinish
    function L4_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._open_reward_hint_dialog
      L0_3(L1_3)
    end
    L2_2(L3_2, L4_2)
  end
end
L2_1._setup_mono = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.Log
    L6_2 = "[RollShop] RollShop#"
    L7_2 = A0_2._roll_shop
    L7_2 = L7_2.ID
    L8_2 = " tier="
    L9_2 = L4_2
    L10_2 = ", Items.Count="
    L11_2 = A0_2._roll_shop
    L12_2 = L11_2
    L11_2 = L11_2.GetRewardGroup
    L13_2 = L4_2
    L11_2 = L11_2(L12_2, L13_2)
    L11_2 = L11_2.Items
    L11_2 = L11_2.Count
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
    L5_2(L6_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.gacha_reward_lists
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeInitGridView
    L7_2 = A0_2._roll_shop
    L8_2 = L7_2
    L7_2 = L7_2.GetRewardGroup
    L9_2 = L4_2
    L7_2 = L7_2(L8_2, L9_2)
    L7_2 = L7_2.Items
    L7_2 = L7_2.Count
    function L8_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3, L7_3
      L4_3 = A0_3
      L3_3 = A0_3._get_reward_item_by_index_and_tier
      L5_3 = A1_3
      L6_3 = A2_3
      L7_3 = L4_2
      return L3_3(L4_3, L5_3, L6_3, L7_3)
    end
    L9_2 = nil
    L10_2 = nil
    L11_2 = A0_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L1_2 = A0_2._roll_shop
  L1_2 = L1_2.T1RewardGroup
  L1_2 = L1_2.ID
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.gacha_group_ur
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L2_1._setup_gacha_reward_lists = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLite
    L9_2 = G
    L9_2 = L9_2.RewardItemIconLiteBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L6_2 = A0_2._roll_shop
  L7_2 = L6_2
  L6_2 = L6_2.GetRewardGroup
  L8_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2)
  L6_2 = L6_2.Items
  L6_2 = L6_2[A2_2]
  L8_2 = L5_2
  L7_2 = L5_2.setup_view
  L9_2 = L6_2.ConfigID
  L7_2(L8_2, L9_2)
  L8_2 = L5_2
  L7_2 = L5_2.set_count_display
  L9_2 = false
  L7_2(L8_2, L9_2)
  if A3_2 == 1 then
    L7_2 = A0_2._roll_shop
    L8_2 = L7_2
    L7_2 = L7_2.IsT1RewardTaken
    L9_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L8_2 = L5_2
      L7_2 = L5_2.set_attachment_getted
      L9_2 = true
      L7_2(L8_2, L9_2)
    end
  end
  return L4_2
end
L2_1._get_reward_item_by_index_and_tier = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.Log
  L3_2 = "[RollShop] _start_rolling called"
  L2_2(L3_2)
  L2_2 = A1_2.RollShopID
  L3_2 = A0_2._roll_shop
  L3_2 = L3_2.ID
  if L2_2 ~= L3_2 then
    return
  end
  A0_2._last_rolling_params = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.frame_effect_loop
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.frame_effect_burst
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.frame_effect_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.bg_rolling_mask
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_head
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Color
  L3_2 = L3_2.gray
  L2_2.color = L3_2
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.gacha_groups_mask1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = true
    L7_2(L8_2, L9_2)
  end
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.gacha_groups_mask2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = true
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._calc_target_index
  L4_2 = A1_2.RewardGroupType
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono
  L5_2 = A0_2
  L4_2 = A0_2._get_rolling_gacha_groups_mask1
  L4_2 = L4_2(L5_2)
  L3_2.GachaGroupsMask1 = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono
  L5_2 = A0_2
  L4_2 = A0_2._get_rolling_gacha_groups_mask2
  L4_2 = L4_2(L5_2)
  L3_2.GachaGroupsMask2 = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono
  L5_2 = A0_2
  L4_2 = A0_2._get_rolling_gacha_groups_focus
  L4_2 = L4_2(L5_2)
  L3_2.GachaGroupsFocus = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono
  L5_2 = A0_2
  L4_2 = A0_2._get_wait_seconds_after_rolling
  L6_2 = A1_2.RewardGroupType
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.WaitSeconds = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono
  L4_2 = L3_2
  L3_2 = L3_2.StartRolling
  L5_2 = L2_2
  L6_2 = A1_2.WalkNum
  L3_2(L4_2, L5_2, L6_2)
end
L2_1._start_rolling = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._last_rolling_params
  L1_2 = L1_2.RewardGroupType
  L3_2 = A0_2
  L2_2 = A0_2._get_anim_cmpt
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = L2_2
  L3_2 = L2_2.Play
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.frame_effect_loop
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.frame_effect_burst
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.frame_effect_reward
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L2_1._play_getting_reward_effect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  if 1 <= A1_2 and A1_2 <= 4 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.gacha_groups_anim
    L2_2 = L2_2[A1_2]
    return L2_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.gacha_groups_anim
    L2_2 = L2_2[3]
    return L2_2
  end
end
L2_1._get_anim_cmpt = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._roll_shop
  L2_2 = L2_2.ID
  if L2_2 == 1 then
    L2_2 = 2.5
    return L2_2
  end
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._get_anim_cmpt
    L2_3 = A1_2
    L0_3 = L0_3(L1_3, L2_3)
    L0_3 = L0_3.clip
    L0_3 = L0_3.length
    L0_3 = L0_3 + 0.1
    return L0_3
  end
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 then
    return L3_2
  end
  L4_2 = 1
  return L4_2
end
L2_1._get_wait_seconds_after_rolling = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_closable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIRollShopPageAutoExit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._auto_exit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._set_closable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._last_rolling_params
  L2_2 = L2_2.DisplayItems
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._last_rolling_params
  L2_2 = L2_2.RewardGroupType
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = G
  L4_2 = L4_2.MazeGachaBoxRewardHintDialog
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L2_1._open_reward_hint_dialog = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._roll_shop
  L1_2 = L1_2.T1RewardGroup
  L1_2 = L1_2.ID
  if L1_2 then
    L1_2 = A0_2._roll_shop
    L2_2 = L1_2
    L1_2 = L1_2.IsT1RewardsAllTaken
    L1_2 = L1_2(L2_2)
    L1_2 = not L1_2
  end
  return L1_2
end
L2_1._is_tier1_available_in_rolling = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_tier1_available_in_rolling
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = {}
    L2_2 = A0_2._binder
    L2_2 = L2_2.gacha_group4_mask1
    L2_2 = L2_2.gameObject
    L3_2 = A0_2._binder
    L3_2 = L3_2.gacha_group3_mask1
    L3_2 = L3_2.gameObject
    L4_2 = A0_2._binder
    L4_2 = L4_2.gacha_group2_mask1
    L4_2 = L4_2.gameObject
    L5_2 = A0_2._binder
    L5_2 = L5_2.gacha_group1_mask1
    L5_2 = L5_2.gameObject
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L1_2[4] = L5_2
    return L1_2
  else
    L1_2 = {}
    L2_2 = A0_2._binder
    L2_2 = L2_2.gacha_group3_mask1
    L2_2 = L2_2.gameObject
    L3_2 = A0_2._binder
    L3_2 = L3_2.gacha_group2_mask1
    L3_2 = L3_2.gameObject
    L4_2 = A0_2._binder
    L4_2 = L4_2.gacha_group1_mask1
    L4_2 = L4_2.gameObject
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    return L1_2
  end
end
L2_1._get_rolling_gacha_groups_mask1 = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_tier1_available_in_rolling
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = {}
    L2_2 = A0_2._binder
    L2_2 = L2_2.gacha_group4_mask2
    L2_2 = L2_2.gameObject
    L3_2 = A0_2._binder
    L3_2 = L3_2.gacha_group3_mask2
    L3_2 = L3_2.gameObject
    L4_2 = A0_2._binder
    L4_2 = L4_2.gacha_group2_mask2
    L4_2 = L4_2.gameObject
    L5_2 = A0_2._binder
    L5_2 = L5_2.gacha_group1_mask2
    L5_2 = L5_2.gameObject
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L1_2[4] = L5_2
    return L1_2
  else
    L1_2 = {}
    L2_2 = A0_2._binder
    L2_2 = L2_2.gacha_group3_mask2
    L2_2 = L2_2.gameObject
    L3_2 = A0_2._binder
    L3_2 = L3_2.gacha_group2_mask2
    L3_2 = L3_2.gameObject
    L4_2 = A0_2._binder
    L4_2 = L4_2.gacha_group1_mask2
    L4_2 = L4_2.gameObject
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    return L1_2
  end
end
L2_1._get_rolling_gacha_groups_mask2 = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._is_tier1_available_in_rolling
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = {}
    L2_2 = A0_2._binder
    L2_2 = L2_2.gacha_group4_focus
    L2_2 = L2_2.gameObject
    L3_2 = A0_2._binder
    L3_2 = L3_2.gacha_group3_focus
    L3_2 = L3_2.gameObject
    L4_2 = A0_2._binder
    L4_2 = L4_2.gacha_group2_focus
    L4_2 = L4_2.gameObject
    L5_2 = A0_2._binder
    L5_2 = L5_2.gacha_group1_focus
    L5_2 = L5_2.gameObject
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L1_2[4] = L5_2
    return L1_2
  else
    L1_2 = {}
    L2_2 = A0_2._binder
    L2_2 = L2_2.gacha_group3_focus
    L2_2 = L2_2.gameObject
    L3_2 = A0_2._binder
    L3_2 = L3_2.gacha_group2_focus
    L3_2 = L3_2.gameObject
    L4_2 = A0_2._binder
    L4_2 = L4_2.gacha_group1_focus
    L4_2 = L4_2.gameObject
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    return L1_2
  end
end
L2_1._get_rolling_gacha_groups_focus = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.SendGachaRequest
  L4_2 = A0_2._roll_shop
  L4_2 = L4_2.ID
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._send_gacha_request = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._is_tier1_available_in_rolling
  L2_2 = L2_2(L3_2)
  if L2_2 and 1 <= A1_2 and A1_2 <= 4 then
    L3_2 = A1_2 - 1
    return L3_2
  elseif not L2_2 and 2 <= A1_2 and A1_2 <= 4 then
    L3_2 = A1_2 - 2
    return L3_2
  elseif A1_2 == 5 then
    L3_2 = 1
    return L3_2
  elseif A1_2 == 6 then
    L3_2 = 1
    return L3_2
  end
  L3_2 = 0
  return L3_2
end
L2_1._calc_target_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._roll_shop
    L7_2 = L6_2
    L6_2 = L6_2.GetRewardGroup
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = 0
    L8_2 = L6_2.Items
    L8_2 = L8_2.Count
    L8_2 = L8_2 - 1
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L1_2
      L13_2 = L6_2.Items
      L13_2 = L13_2[L10_2]
      L13_2 = L13_2.ConfigID
      L11_2(L12_2, L13_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Common.ItemTip.ItemTipsDialog"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L2_1._open_reward_detail_dialog = L3_1
return L2_1
