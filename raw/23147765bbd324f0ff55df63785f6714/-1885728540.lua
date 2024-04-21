local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherChallenge.Panels.AetherChallengeRankTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherChallenge.Panels.AetherChallengeRankTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherChallenge.Panels.AetherChallengeInfiniteTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherChallenge.Panels.AetherChallengeInfiniteTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherChallenge.Panels.AetherChallengeNpcInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherChallenge.Panels.AetherChallengeNpcInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideTerminalChallengeTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L2_1 = "AetherChallengeLineUnlock"
L3_1 = "AetherNPCChallengeItemUnlock"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_challenge_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_pre
  L4_2 = A0_2._on_btn_pre
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_btn_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_animation_evt
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AetherDivideTakeChallengeReward
  L4_2 = A0_2._on_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._rank_tab_control = L1_2
  L1_2 = A0_2._rank_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._rank_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs
  L1_2(L2_2)
  L1_2 = A0_2._rank_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AetherDivideChallengeRankExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = L1_1.ChallengeData
    L4_2 = L3_2
    L3_2 = L3_2.IsRankShow
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.create_panel
      L5_2 = G
      L5_2 = L5_2.AetherChallengeRankTabItem
      L6_2 = G
      L6_2 = L6_2.AetherChallengeRankTabItemBinder
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L5_2 = L3_2
      L4_2 = L3_2.init_data
      L6_2 = L2_2
      L4_2(L5_2, L6_2)
      L5_2 = L3_2
      L4_2 = L3_2.bind
      L6_2 = A0_2._binder
      L6_2 = L6_2.node_tank_tab_root
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._rank_tab_control
      L5_2 = L4_2
      L4_2 = L4_2.add_item
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    else
      L3_2 = L2_2.IsHard
      if L3_2 then
        L3_2 = A0_2._rank_tab_control
        L4_2 = L3_2
        L3_2 = L3_2.add_item
        L6_2 = A0_2
        L5_2 = A0_2._create_infinite_tab_item
        L7_2 = L2_2
        L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
        L3_2(L4_2, L5_2, L6_2, L7_2)
      end
    end
  end
end
L0_1._init_tabs = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.AetherChallengeInfiniteTabItem
  L5_2 = G
  L5_2 = L5_2.AetherChallengeInfiniteTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._infinite_tab_item = L2_2
  L2_2 = A0_2._infinite_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_infinite_tab_root
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._infinite_tab_item
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._infinite_tab_item
  return L2_2
end
L0_1._create_infinite_tab_item = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = "UIText_AetherDivide_Overview_HyperlinkDuel"
  return L1_2
end
L0_1.get_title = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L4_2 = A0_2
  L3_2 = A0_2.get_title
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AetherDivideChallengeTab"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._is_first_select_tab = true
  L1_2 = A0_2._rank_tab_control
  L1_2 = L1_2.current_select_item
  L3_2 = A0_2
  L2_2 = A0_2._get_default_tab_idx
  L2_2 = L2_2(L3_2)
  if L1_2 ~= nil then
    L3_2 = L1_2.uid
    if L3_2 == L2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.challenge_list
      L4_2 = L3_2
      L3_2 = L3_2.RefreshAllShownItem
      L3_2(L4_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_lock_hint
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L6_2 = L1_2
      L5_2 = L1_2.is_unlocked
      L5_2 = L5_2(L6_2)
      L5_2 = not L5_2
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = A0_2._rank_tab_control
    L4_2 = L3_2
    L3_2 = L3_2.click_item_by_uid
    L6_2 = A0_2
    L5_2 = A0_2._get_default_tab_idx
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.force_set_first_navigation_target
  L3_2(L4_2)
  L3_2 = A0_2._need_fade_in
  if L3_2 == true then
    L3_2 = A0_2._need_play_unlock_anim
    if not L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.challenge_list
      L4_2 = L3_2
      L3_2 = L3_2.PlayFadeIn
      L3_2(L4_2)
    end
  end
end
L0_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_list
  L2_2 = L1_2
  L1_2 = L1_2.CancelFadeIn
  L1_2(L2_2)
  L1_2 = A0_2._rank_tab_control
  L1_2 = L1_2.current_select_item
  L3_2 = L1_2
  L2_2 = L1_2.is_unlocked
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._infinite_tab_item
  L3_2 = L1_2 == L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_challenge_list
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetLightWeightActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_infinite_tab_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetLightWeightActive
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_empty
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2 or L6_2
  if L3_2 then
    L6_2 = not L2_2
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lock_hint
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2 and L6_2
  L4_2(L5_2, L6_2)
  A0_2._need_play_unlock_anim = false
  L5_2 = L1_2
  L4_2 = L1_2.is_new
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._infinite_tab_item
  if L1_2 ~= L5_2 then
    A0_2._need_fade_in = true
    A0_2._need_play_unlock_anim = L4_2
    L6_2 = L1_2
    L5_2 = L1_2.get_challenge_data_list
    L5_2 = L5_2(L6_2)
    A0_2._challenge_data_list = L5_2
    L6_2 = A0_2
    L5_2 = A0_2._refresh_challenge_list
    L5_2(L6_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.scroll_rect
    L6_2 = L5_2
    L5_2 = L5_2.AutoSetPosition
    L5_2(L6_2)
    if not L4_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.challenge_list
      L6_2 = L5_2
      L5_2 = L5_2.PlayFadeIn
      L5_2(L6_2)
    end
  else
    A0_2._need_fade_in = false
  end
  L5_2 = A0_2._need_play_unlock_anim
  if L5_2 or not L2_2 then
    L5_2 = A0_2._infinite_tab_item
    if L1_2 == L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_infinite_unlock_hint
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L8_2 = L1_2
      L7_2 = L1_2.get_unlock_hint
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    else
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_unlock_hint
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L8_2 = L1_2
      L7_2 = L1_2.get_unlock_hint
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
  L5_2 = A0_2._is_first_select_tab
  if not L5_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.SDKLuaReportAdapter
    L5_2 = L5_2.ReportUIButtonClick
    L6_2 = A0_2._owner
    L6_2 = L6_2.__name
    L7_2 = A0_2.__name
    L8_2 = "AetherChallengeBtn"
    L10_2 = L1_2
    L9_2 = L1_2.get_rank_row
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2.ChallengeRank
    L8_2 = L8_2 .. L9_2
    L9_2 = A0_2._owner
    L9_2 = L9_2.guid
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  A0_2._is_first_select_tab = false
  L6_2 = A0_2
  L5_2 = A0_2.force_set_first_navigation_target
  L5_2(L6_2)
  L6_2 = L1_2
  L5_2 = L1_2.get_rank_row
  L5_2 = L5_2(L6_2)
  if L5_2 ~= nil and L4_2 then
    L6_2 = L1_1.ChallengeData
    L7_2 = L6_2
    L6_2 = L6_2.OnRankTabItemClick
    L8_2 = L5_2.ChallengeRank
    L6_2(L7_2, L8_2)
  end
  L6_2 = A0_2._need_play_unlock_anim
  if L6_2 then
    L6_2 = A0_2._block_uid
    if L6_2 == nil then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.GlobalVars
      L6_2 = L6_2.s_UIManager
      L7_2 = L6_2
      L6_2 = L6_2.BlockFixedTime
      L8_2 = 3
      L9_2 = 10
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      A0_2._block_uid = L6_2
    end
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_lock_hint
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.UIAnimationUtils
    L6_2 = L6_2.PlayFromBegin
    L7_2 = A0_2._binder
    L7_2 = L7_2.anim_lock_line
    L8_2 = "AetherDivideNPCChallengeListLock_UnLock"
    L6_2(L7_2, L8_2)
  end
end
L0_1._on_tab_select_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._challenge_data_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.challenge_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_challenge_list = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AetherChallengeNpcInfoPanel
    L8_2 = G
    L8_2 = L8_2.AetherChallengeNpcInfoPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_challenge_item_click
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._challenge_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._need_play_unlock_anim
  L9_2 = A0_2._rank_tab_control
  L9_2 = L9_2.current_select_item
  L10_2 = L9_2
  L9_2 = L9_2.is_unlocked
  L9_2 = not L9_2 and L9_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_challenge_item_changed = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._rank_tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.is_unlocked
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.AetherDivide.AetherChallenge.AetherChallengeNpcInfoDialog"
    L4_2 = A0_2._challenge_data_list
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_AetherDivide_Common_Locked"
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_challenge_item_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._rank_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.item_count
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._rank_tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.is_unlocked
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      if 1 < L5_2 then
        L7_2 = L5_2 - 1
        if L7_2 then
          goto lbl_22
        end
      end
      L7_2 = L5_2
      ::lbl_22::
      return L7_2
    end
    L8_2 = L6_2
    L7_2 = L6_2.has_unfinished_or_reward_challenge
    L7_2 = L7_2(L8_2)
    if L7_2 then
      return L5_2
    end
  end
  return L1_2
end
L0_1._get_default_tab_idx = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.challenge_list
  L3_2 = L2_2
  L2_2 = L2_2.CancelFadeIn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_challenge_list
  L2_2(L3_2)
end
L0_1._on_get_reward = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.challenge_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    return L3_2
  end
end
L0_1._get_panel_by_idx = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = nil
  L3_2 = L2_1
  if A1_2 == L3_2 then
    A0_2._play_idx = 1
    L4_2 = A0_2
    L3_2 = A0_2._get_panel_by_idx
    L5_2 = A0_2._play_idx
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  else
    L3_2 = L3_1
    if A1_2 == L3_2 then
      L3_2 = A0_2._play_idx
      if L3_2 ~= nil then
        L4_2 = A0_2
        L3_2 = A0_2._get_panel_by_idx
        L5_2 = A0_2._play_idx
        L3_2 = L3_2(L4_2, L5_2)
        L5_2 = L3_2
        L4_2 = L3_2.setup_view
        L7_2 = L3_2
        L6_2 = L3_2.get_data
        L6_2 = L6_2(L7_2)
        L7_2 = true
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = A0_2._play_idx
        L4_2 = L4_2 + 1
        A0_2._play_idx = L4_2
        L4_2 = A0_2._play_idx
        L5_2 = A0_2._challenge_data_list
        L5_2 = #L5_2
        if L4_2 <= L5_2 then
          L5_2 = A0_2
          L4_2 = A0_2._get_panel_by_idx
          L6_2 = A0_2._play_idx
          L4_2 = L4_2(L5_2, L6_2)
          L2_2 = L4_2
        else
          L4_2 = A0_2._block_uid
          if L4_2 ~= nil then
            L4_2 = CS
            L4_2 = L4_2.RPG
            L4_2 = L4_2.Client
            L4_2 = L4_2.GlobalVars
            L4_2 = L4_2.s_UIManager
            L5_2 = L4_2
            L4_2 = L4_2.TryUnblockFixedTime
            L6_2 = A0_2._block_uid
            L4_2(L5_2, L6_2)
            A0_2._block_uid = nil
          end
          A0_2._play_idx = nil
          A0_2._need_play_unlock_anim = false
          L4_2 = G
          L4_2 = L4_2.TutorialManager
          L5_2 = L4_2
          L4_2 = L4_2.trigger_tutorial_custom_string
          L6_2 = "AetherChallengeUnlockAnimFinish"
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.play_unlock_anim
    L3_2(L4_2)
  end
end
L0_1._on_animation_evt = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rank_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L0_1._on_btn_pre = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rank_tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L0_1._on_btn_next = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._rank_tab_control
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._rank_tab_control
  L1_2 = L1_2.current_select_item
  L3_2 = L1_2
  L2_2 = L1_2.is_unlocked
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._infinite_tab_item
  if L1_2 ~= L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.challenge_list
    L4_2 = L3_2
    L3_2 = L3_2.GetShownItemByItemIndex
    L5_2 = 0
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 ~= nil then
      L4_2 = L3_2.UserObjectData
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      return L4_2(L5_2)
    end
  elseif L2_2 then
    L3_2 = A0_2._infinite_tab_item
    L4_2 = L3_2
    L3_2 = L3_2.get_first_selected_object
    return L3_2(L4_2)
  end
end
L0_1.get_first_selected_object = L4_1
return L0_1
