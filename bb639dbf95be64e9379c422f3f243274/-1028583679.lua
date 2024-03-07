local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.AdventureReward.RewardListDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AdventureReward.AdventureRewardInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AdventureReward.AdventureRewardInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RewardListDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_AdventureRewardList_Title"
L2_1 = 8
L3_1 = 0.1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RewardListDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2.block_when_async_load = false
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._total_reward_list = A1_2
  A0_2._showing_page_index = 1
  L2_2 = math
  L2_2 = L2_2.ceil
  L3_2 = A0_2._total_reward_list
  L3_2 = #L3_2
  L4_2 = L2_1
  L3_2 = L3_2 / L4_2
  L2_2 = L2_2(L3_2)
  A0_2._max_page_index = L2_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_active_change
  L2_2 = L1_2
  L1_2 = L1_2.SetupChangeCallBack
  L3_2 = A0_2._on_active_change
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.set_maze_main_page_toast
  L3_2 = A0_2
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_timer_callback
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  A0_2._is_fading_out = false
  A0_2._is_page_fadeout = false
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BeginPlayVideo
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishRewardToast
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeToBattleTransitBegin
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._total_reward_list
  if L1_2 ~= nil then
    L1_2 = A0_2._total_reward_list
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_11
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._show_reward_finish
  L1_2(L2_2)
  do return end
  ::lbl_11::
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.PopupQueueManager
    L2_2 = L1_2
    L1_2 = L1_2.is_panel_maze_toast_nil
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._show_reward_finish
      L1_2(L2_2)
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._show_title_fade_in
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_common_reward
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.set_interval
  L3_2 = L3_1
  L5_2 = A0_2
  L4_2 = A0_2._get_showing_common_reward_count
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 * L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._data = nil
  A0_2._total_reward_list = nil
  A0_2._count_down_timer = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_showing_common_reward_count
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = L1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_reward_list
  L5_2 = L5_2.ItemTotalCount
  L5_2 = L1_2 ~= L5_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._show_common_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._total_reward_list
  L1_2 = #L1_2
  L2_2 = A0_2._showing_page_index
  L3_2 = A0_2._max_page_index
  if L2_2 == L3_2 then
    L2_2 = A0_2._showing_page_index
    L2_2 = L2_2 - 1
    L3_2 = L2_1
    L2_2 = L2_2 * L3_2
    L2_2 = L1_2 - L2_2
    return L2_2
  else
    L2_2 = L2_1
    return L2_2
  end
end
L0_1._get_showing_common_reward_count = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2 - 1
  L4_2 = L2_1
  L3_2 = L3_2 * L4_2
  L3_2 = L3_2 + A2_2
  return L3_2
end
L0_1._get_real_index_in_total_reward = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = A0_2._showing_page_index
  L4_2 = A2_2 + 1
  L6_2 = A0_2
  L5_2 = A0_2._get_real_index_in_total_reward
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2._total_reward_list
  L6_2 = L6_2[L5_2]
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.InventoryModule
  L7_2 = L7_2.GetItemRow
  L8_2 = L6_2.id
  L7_2 = L7_2(L8_2)
  L8_2 = A1_2.ItemPoolList
  L8_2 = L8_2.Count
  L9_2 = L7_2.Rarity
  L9_2 = #L9_2
  L9_2 = L9_2 - 1
  L10_2 = L6_2.id
  L11_2 = G
  L11_2 = L11_2.UtilEngineWrap
  L11_2 = L11_2.ConvCsEnumToNum
  L12_2 = CS
  L12_2 = L12_2.HJLLLAFEOHH
  L12_2 = L12_2.KMEPFJMIECL
  L11_2 = L11_2(L12_2)
  if L10_2 == L11_2 then
    L9_2 = L8_2 - 1
  elseif L8_2 <= L9_2 then
    L9_2 = L8_2 - 2
  end
  L11_2 = A1_2
  L10_2 = A1_2.NewListViewItem
  L12_2 = L9_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = L10_2.UserObjectData
  if L11_2 == nil then
    L13_2 = A0_2
    L12_2 = A0_2.create_panel
    L14_2 = G
    L14_2 = L14_2.AdventureRewardInfoPanel
    L15_2 = G
    L15_2 = L15_2.AdventureRewardInfoPanelBinder
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L11_2 = L12_2
    L13_2 = L11_2
    L12_2 = L11_2.bind
    L14_2 = L10_2.transform
    L12_2(L13_2, L14_2)
    L10_2.UserObjectData = L11_2
  end
  L13_2 = L11_2
  L12_2 = L11_2.setup_view
  L14_2 = L7_2
  L15_2 = L6_2.num
  L16_2 = L3_1
  L16_2 = L16_2 * A2_2
  L12_2(L13_2, L14_2, L15_2, L16_2)
  L13_2 = L11_2
  L12_2 = L11_2.set_extra_reward_hint
  L14_2 = L6_2.isExtra
  L12_2(L13_2, L14_2)
  return L10_2
end
L0_1._on_reward_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._is_fading_out
  if L1_2 == true then
    A0_2._is_fading_out = false
    L2_2 = A0_2
    L1_2 = A0_2._show_reward_finish
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._max_page_index
  if L1_2 <= 1 then
    L2_2 = A0_2
    L1_2 = A0_2._show_title_fade_out
    L1_2(L2_2)
    A0_2._is_fading_out = true
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.set_interval
    L3_2 = 3
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._showing_page_index
    L2_2 = A0_2._max_page_index
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._show_title_fade_out
      L1_2(L2_2)
      A0_2._is_fading_out = true
      L1_2 = A0_2._count_down_timer
      L2_2 = L1_2
      L1_2 = L1_2.set_interval
      L3_2 = 3
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._is_page_fadeout
      if L1_2 == false then
        A0_2._is_page_fadeout = true
        L1_2 = A0_2._count_down_timer
        L2_2 = L1_2
        L1_2 = L1_2.set_interval
        L3_2 = 3
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2._showing_page_index
        L1_2 = L1_2 + 1
        A0_2._showing_page_index = L1_2
        L1_2 = A0_2._count_down_timer
        L2_2 = L1_2
        L1_2 = L1_2.set_interval
        L3_2 = L3_1
        L5_2 = A0_2
        L4_2 = A0_2._get_showing_common_reward_count
        L4_2 = L4_2(L5_2)
        L3_2 = L3_2 * L4_2
        L1_2(L2_2, L3_2)
        L2_2 = A0_2
        L1_2 = A0_2._show_common_reward
        L1_2(L2_2)
        A0_2._is_page_fadeout = false
      end
    end
  end
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._on_timer_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "ListTileFadeIn"
    L1_2(L2_2, L3_2)
  end
end
L0_1._show_title_fade_in = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "ListTitleFadeOut"
  L1_2(L2_2, L3_2)
end
L0_1._show_title_fade_out = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._show_reward_finish = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_notify_finish = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == false then
    A0_2._need_trigger_fade_in = true
  end
  L2_2 = A0_2._binder
  if L2_2 ~= nil then
    L2_2 = A0_2._count_down_timer
    if L2_2 ~= nil then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  if A1_2 then
    L2_2 = A0_2._count_down_timer
    L3_2 = L2_2
    L2_2 = L2_2.resume
    L2_2(L3_2)
    L2_2 = A0_2._count_down_timer
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
    L2_2 = A0_2._need_trigger_fade_in
    if L2_2 == true then
      A0_2._need_trigger_fade_in = false
      L3_2 = A0_2
      L2_2 = A0_2._show_title_fade_in
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._show_reward_fade_in
      L2_2(L3_2)
    end
  else
    L2_2 = A0_2._count_down_timer
    L3_2 = L2_2
    L2_2 = L2_2.pause
    L2_2(L3_2)
  end
end
L0_1._on_active_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_list
  L1_2 = L1_2.ItemList
  if L1_2 == nil then
    return
  end
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.UserObjectData
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.show_fade_in
      L8_2(L9_2)
    end
  end
end
L0_1._show_reward_fade_in = L4_1
return L0_1
