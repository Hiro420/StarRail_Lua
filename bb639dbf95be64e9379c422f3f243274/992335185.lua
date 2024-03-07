local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Shop.WorldShop.OfferingWorldShopPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Shop.WorldShop.OfferingRewardItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "OfferingWorldShopPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "WorldOfferingPage_LevelUp"
L2_1 = "WorldOfferingPage_Progress"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.OfferingModule
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.OfferingWorldShopPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_save_by_click = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "string" then
    L2_2 = tonumber
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    A1_2 = L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.OfferingModule
  L3_2 = L2_2
  L2_2 = L2_2.GetOfferingRewardData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._data = L2_2
end
L0_1.init = L4_1
function L4_1(A0_2)
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
  A0_2.select_panel = nil
  L1_2 = A0_2._data
  L1_2.IsShowUpgradeHint = false
  A0_2._got_reward = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_value_change
  L2_2 = L1_2
  L1_2 = L1_2.SetValueChangeCallback
  function L3_2(A0_3)
    local L1_3
    L1_3 = A0_2._binder
    L1_3 = L1_3.progress_bar_level
    L1_3.fillAmount = A0_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_value_change
  L2_2 = L1_2
  L1_2 = L1_2.SetFinishCallback
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_progress
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UI3DUtilities
  L1_2 = L1_2.ActiveEnvironmentProfile
  L2_2 = "Stages/Outputs/Chapter03/EnviroProfile/Chap03_CloseView_ADV_MAZ_P01_Night_VarientClockBoy.enviroProfile.asset.enviroProfile.asset"
  L1_2(L2_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UI3DUtilities
  L1_2 = L1_2.ResetEnvironmentProfile
  L1_2()
end
L0_1._on_unload = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_top_bar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "WorldOfferingPage"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_progress
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
  L1_2 = A0_2._refresh_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._move_to_default_pos
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_state
  L1_2(L2_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Level
  L2_2 = L1_2
  L3_2 = ipairs
  L4_2 = A0_2._reward_data
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Level
    if not (L1_2 < L8_2) then
      L9_2 = A0_2._data
      L10_2 = L9_2
      L9_2 = L9_2.IsRewardTaken
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        goto lbl_19
      end
    end
    L2_2 = L6_2
    do break end
    ::lbl_19::
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_list
  L4_2 = L3_2
  L3_2 = L3_2.MovePanelToItemIndex
  L5_2 = L2_2 - 1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_list
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_ui_navigation
  L5_2 = L2_2 - 1
  L3_2(L4_2, L5_2)
end
L0_1._move_to_default_pos = L4_1
function L4_1(A0_2)
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
  L1_2 = L1_2.SubmittedItemID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.InventoryModule
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._data
  L3_2 = L3_2.NeedNum
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_item_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_icon
  L8_2 = L4_2.ItemCurrencyIconPath
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_cur_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = A0_2._data
  L7_2 = L7_2.SubmittedNum
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_need_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = 0 < L2_2
  A0_2._has_item_to_submit = L5_2
end
L0_1._refresh_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Progress
  A0_2._last_progress = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress_bar_level
  L2_2 = A0_2._data
  L2_2 = L2_2.Progress
  L1_2.fillAmount = L2_2
end
L0_1._refresh_progress = L4_1
function L4_1(A0_2)
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
L0_1._refresh_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.GetUnlockHint
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 ~= nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_submit
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_submit
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_tip
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_submit
    L4_2 = A0_2._has_item_to_submit
    L4_2 = not L4_2
    L3_2.IsInFakeDisableState = L4_2
  end
end
L0_1._refresh_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._got_reward
  if not L1_2 then
    return
  end
  A0_2._got_reward = false
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.trigger_custom_string
  L2_2 = "ADV_OfferingClockie_Got_Reward"
  L1_2(L2_2)
end
L0_1._on_first_child_dialog_close = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.OfferingRewardItemPanel
    L8_2 = G
    L8_2 = L8_2.OfferingRewardItemPanelBinder
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
  L6_2 = L3_1
  L7_2 = L6_2
  L6_2 = L6_2.IsLongTailReward
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L6_2 = A0_2._data
    L7_2 = L6_2
    L6_2 = L6_2.GetLongTailRewardNeedNum
    L6_2 = L6_2(L7_2)
    L7_2 = 0
    L8_2 = A0_2._data
    L8_2 = L8_2.Level
    L9_2 = A0_2._data
    L9_2 = L9_2.MaxLevel
    if L8_2 == L9_2 then
      L8_2 = A0_2._data
      L7_2 = L8_2.SubmittedNum
    end
    L9_2 = L4_2
    L8_2 = L4_2.setup_longtail_view
    L10_2 = L5_2
    L11_2 = L6_2
    L12_2 = L7_2
    L13_2 = A0_2._data
    L13_2 = L13_2.SubmittedItemID
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  else
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
  end
  return L3_2
end
L0_1._on_reward_item_change = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_btn_get_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._pre_level
  L1_2 = L1_2 ~= nil
  A0_2._is_level_up = L1_2
  L1_2 = A0_2._is_level_up
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.trigger_custom_string
    L2_2 = "ADV_OfferingClockie_Submit_LevelUp"
    L1_2(L2_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_progress
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.trigger_custom_string
    L2_2 = "ADV_OfferingClockie_Submit_Normal"
    L1_2(L2_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_progress
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation_value_change
    L2_2 = A0_2._last_progress
    L1_2.StartValue = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation_value_change
    L2_2 = A0_2._data
    L2_2 = L2_2.Progress
    L1_2.EndValue = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation_value_change
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._is_level_up
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_progress
    L1_2(L2_2)
  end
  A0_2._is_level_up = false
end
L0_1._on_info_updated = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == nil then
    return
  end
  A0_2._got_reward = true
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = A1_2
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._move_to_default_pos
  L2_2(L3_2)
end
L0_1._on_get_reward = L4_1
function L4_1(A0_2)
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
L0_1._on_btn_item_detail = L4_1
function L4_1(A0_2)
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
L0_1._on_btn_submit = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.select_panel
  if L2_2 == nil then
    return
  end
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L2_2 = A0_2.select_panel
    L3_2 = L2_2
    L2_2 = L2_2.show_reward_tips
    L2_2(L3_2)
  end
end
L0_1.on_in_control_action_click = L4_1
return L0_1
