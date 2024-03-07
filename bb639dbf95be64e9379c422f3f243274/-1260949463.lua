local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Offering.DrinkMakerOfferingPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Offering.DrinkMakerOfferingRewardItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerOfferingPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.DrinkMakerModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.OfferingModule
L3_1 = "#EB4D3D"
L4_1 = "#DFC69D"
L5_1 = "UIText_DrinkMaker_TipsReward_Max"
L6_1 = "DrinkMakerLevelUp"
L7_1 = "Menu_UnchangeLeftStickButton"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DrinkMakerOfferingPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._is_save_by_click = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetOfferingRewardData
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.DrinkMakerModule
  L3_2 = L3_2.OFFER_TYPE
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._data = L1_2
end
L0_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_submit
  L4_2 = A0_2._on_btn_submit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "DrinkMakerOfferSubmit"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_submit_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OfferingInfoUpdated
  L4_2 = A0_2._on_info_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetOfferingReward
  L4_2 = A0_2._on_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.GetAllRewardRow
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._reward_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
  A0_2.select_panel = nil
  L1_2 = A0_2._data
  L1_2.IsShowUpgradeHint = false
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.IsDataPrepared
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.NIJNBICAPPA
    L3_2 = L3_2.JKGDENGDFPL
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._add_packet_handler
    L3_2 = CS
    L3_2 = L3_2.NIJNBICAPPA
    L3_2 = L3_2.JKGDENGDFPL
    L4_2 = L0_1._on_get_drink_maker_data_rsp
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2.set_view_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._custom_setup_view
    L1_2(L2_2)
  end
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ActivityForceRefreshRedDot
  L1_2(L2_2)
end
L0_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_data
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._move_to_default_pos
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._custom_setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward
  L1_2(L2_2)
end
L0_1._refresh = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._data
  L2_2 = L2_2.Level
  L3_2 = L2_2
  L4_2 = ipairs
  L5_2 = A0_2._reward_data
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.Level
    if not (L2_2 < L9_2) then
      L10_2 = A0_2._data
      L11_2 = L10_2
      L10_2 = L10_2.IsRewardTaken
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      if L10_2 then
        goto lbl_19
      end
    end
    L3_2 = L7_2
    do break end
    ::lbl_19::
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.reward_list
  L5_2 = L4_2
  L4_2 = L4_2.MovePanelToItemIndex
  L6_2 = L3_2 - 1
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.reward_list
  L5_2 = L4_2
  L4_2 = L4_2.RefreshAllShownItem
  L4_2(L5_2)
  if A1_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.reward_list
    L5_2 = L4_2
    L4_2 = L4_2.PlayFadeIn
    L4_2(L5_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._init_ui_navigation
  L6_2 = L3_2 - 1
  L4_2(L5_2, L6_2)
end
L0_1._move_to_default_pos = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Level
  A0_2._pre_level = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.Level
  L2_2 = A0_2._data
  L2_2 = L2_2.MaxLevel
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_num_slash
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_submit
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_tip_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_map_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_need_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L5_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._data
    L2_2 = L2_2.SubmittedItemID
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.InventoryModule
    L4_2 = L3_2
    L3_2 = L3_2.GetItemCountByConfigID
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._data
    L4_2 = L4_2.NeedNum
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_cur_num
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = A0_2._data
    L7_2 = L7_2.SubmittedNum
    L7_2 = L3_2 + L7_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_need_num
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._data
    L5_2 = L5_2.SubmittedNum
    L5_2 = L3_2 + L5_2
    L5_2 = L4_2 <= L5_2
    A0_2._has_item_to_submit = L5_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.btn_submit
    L6_2 = A0_2._has_item_to_submit
    L6_2 = not L6_2
    L5_2.IsInFakeDisableState = L6_2
    L5_2 = A0_2._has_item_to_submit
    if L5_2 then
      L5_2 = L4_1
      if L5_2 then
        goto lbl_101
      end
    end
    L5_2 = L3_1
    ::lbl_101::
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_cur_num
    L7_2 = G
    L7_2 = L7_2.UIColorUtils
    L7_2 = L7_2.GetColor
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L6_2.color = L7_2
  end
end
L0_1._refresh_info = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_data
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_reward = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.DrinkMakerOfferingRewardItemPanel
    L8_2 = G
    L8_2 = L8_2.DrinkMakerOfferingRewardItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_btn_callback
    L7_2 = A0_2
    L8_2 = A0_2._on_btn_get_reward
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._reward_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._is_level_up
  if L6_2 then
    L7_2 = L4_2
    L6_2 = L4_2.try_play_unlock_anim
    L8_2 = A0_2._data
    L8_2 = L8_2.Level
    L6_2(L7_2, L8_2)
  else
    L6_2 = A0_2._data
    L7_2 = L6_2
    L6_2 = L6_2.IsRewardTaken
    L8_2 = L5_2.Level
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L4_2
    L7_2 = L4_2.setup_view
    L9_2 = L5_2
    L10_2 = L6_2
    L11_2 = A0_2._data
    L11_2 = L11_2.Level
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  return L3_2
end
L0_1._on_reward_item_change = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.TakeAllAvailableReward
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.show_full_screen_block_for_packet
    L4_2 = CS
    L4_2 = L4_2.NIJNBICAPPA
    L4_2 = L4_2.KLHNKFJEEPP
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_get_reward = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pre_level
  L1_2 = L1_2 ~= nil
  A0_2._is_level_up = L1_2
  L1_2 = A0_2._is_level_up
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_pre_level
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._pre_level
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_level
    L3_2 = L6_1
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  A0_2._is_level_up = false
end
L0_1._on_info_updated = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.set_view_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._custom_setup_view
  L2_2(L3_2)
end
L0_1._on_get_drink_maker_data_rsp = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = A1_2
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._move_to_default_pos
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_get_reward = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._has_item_to_submit
  if not L1_2 then
    L1_2 = A0_2._hint_text
    if L1_2 == nil then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.GameCore
      L1_2 = L1_2.ItemExcelTable
      L1_2 = L1_2.GetData
      L2_2 = A0_2._data
      L2_2 = L2_2.SubmittedItemID
      L1_2 = L1_2(L2_2)
      L2_2 = G
      L2_2 = L2_2.TextmapStatic
      L2_2 = L2_2.GetText
      L3_2 = L1_2.ItemName
      L2_2 = L2_2(L3_2)
      L3_2 = G
      L3_2 = L3_2.TextmapStatic
      L3_2 = L3_2.GetText
      L4_2 = "UIText_OfferingClockie_CostTip"
      L5_2 = L2_2
      L3_2 = L3_2(L4_2, L5_2)
      A0_2._hint_text = L3_2
    end
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageString
    L3_2 = A0_2._hint_text
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.HGHOOBJMFEN
  L3_2 = A0_2._data
  L3_2 = L3_2.TypeID
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.OMELFOBNOOM
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_submit = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._data
  L4_2 = L4_2.SubmittedItemID
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_detail = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2.select_panel
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2.select_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2._init_ui_navigation
      L4_2 = A0_2._idx
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_enter_zoom = L8_1
function L8_1(A0_2)
  local L1_2
end
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._idx = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L5_2 = L2_2.UserObjectData
    L6_2 = L5_2
    L5_2 = L5_2.get_first_selected_object
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._init_ui_navigation = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.select_panel
  if L2_2 == nil then
    return
  end
  L2_2 = L7_1
  if A1_2 == L2_2 then
    L2_2 = A0_2.select_panel
    L3_2 = L2_2
    L2_2 = L2_2.show_reward_tips
    L2_2(L3_2)
  end
end
L0_1.on_in_control_action_click = L8_1
return L0_1
