local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildLevelRewardPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildLevelRewardListRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildLevelRewardLoopListRow"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.EvolveBuildModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "EvolveBuildLevelRewardPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.EvolveBuildLevelRewardPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_BelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetEvolveBuildActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L2_2 = L1_2
  L1_2 = L1_2.LKKGMCOONJN
  L1_2(L2_2)
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIEvolveBuildTakeExpReward
  L4_2 = A0_2._on_take_reward
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeDate
  function L4_2(A0_3)
    local L1_3, L2_3
    L2_3 = A0_3
    L1_3 = A0_3.exit
    L1_3(L2_3)
  end
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = L0_1.LastSeenTotalExp
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.FindAvailableFameReward
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = L2_2.Level
    if L3_2 then
      goto lbl_21
    end
  end
  L3_2 = 0
  ::lbl_21::
  if L2_2 ~= nil then
    L4_2 = L2_2.RequiredExp
    if L4_2 then
      goto lbl_27
    end
  end
  L4_2 = 0
  ::lbl_27::
  L4_2 = L1_2 - L4_2
  if L2_2 ~= nil then
    L5_2 = L2_2.LevelUpExp
    if L5_2 then
      goto lbl_36
    end
  end
  L5_2 = L0_1.FameRewards
  L5_2 = L5_2[0]
  L5_2 = L5_2.RequiredExp
  ::lbl_36::
  L6_2 = L0_1.TotalExp
  L7_2 = L0_1
  L8_2 = L7_2
  L7_2 = L7_2.FindAvailableFameReward
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
    L8_2 = L7_2.Level
    if L8_2 then
      goto lbl_47
    end
  end
  L8_2 = 0
  ::lbl_47::
  if L7_2 ~= nil then
    L9_2 = L7_2.RequiredExp
    if L9_2 then
      goto lbl_53
    end
  end
  L9_2 = 0
  ::lbl_53::
  L9_2 = L6_2 - L9_2
  if L7_2 ~= nil then
    L10_2 = L7_2.LevelUpExp
    if L10_2 then
      goto lbl_62
    end
  end
  L10_2 = L0_1.FameRewards
  L10_2 = L10_2[0]
  L10_2 = L10_2.RequiredExp
  ::lbl_62::
  L12_2 = A0_2
  L11_2 = A0_2._setup_fame_level
  L13_2 = L2_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.cur_exp
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetText
  L13_2 = L9_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.level_up_exp
  L12_2 = L11_2
  L11_2 = L11_2.SafeSetText
  L13_2 = L10_2
  L11_2(L12_2, L13_2)
  L11_2 = A0_2._binder
  L11_2 = L11_2.exp_bar
  if L10_2 == 0 then
    L12_2 = 1
    if L12_2 then
      goto lbl_83
    end
  end
  L12_2 = L9_2 / L10_2
  ::lbl_83::
  L11_2.fillAmount = L12_2
  L11_2 = L0_1.FameOnceRewardNum
  L12_2 = A0_2._binder
  L12_2 = L12_2.progress_bar_panel
  L13_2 = L12_2
  L12_2 = L12_2.SafeSetActive
  L14_2 = L8_2 < L11_2
  L12_2(L13_2, L14_2)
  L12_2 = A0_2._binder
  L12_2 = L12_2.progress_value_panel
  L13_2 = L12_2
  L12_2 = L12_2.SafeSetActive
  L14_2 = L8_2 < L11_2
  L12_2(L13_2, L14_2)
  L12_2 = A0_2._binder
  L12_2 = L12_2.max_tip
  L13_2 = L12_2
  L12_2 = L12_2.SafeSetActive
  L14_2 = L8_2 >= L11_2
  L12_2(L13_2, L14_2)
  L12_2 = L0_1.FameOnceRewardNum
  L13_2 = A0_2._binder
  L13_2 = L13_2.reward_list
  L14_2 = L13_2
  L13_2 = L13_2.SafeInitListView
  L15_2 = L12_2
  function L16_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L3_3 = L0_1.FameRewards
    L3_3 = L3_3[A2_3]
    L4_3 = L3_3.IsLongTail
    if L4_3 then
      L5_3 = A1_3
      L4_3 = A1_3.NewListViewItem
      L6_3 = 1
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = L4_3.UserObjectData
      if L5_3 == nil then
        L7_3 = A0_3
        L6_3 = A0_3.create_panel
        L8_3 = G
        L8_3 = L8_3.EvolveBuildLevelRewardLoopListRow
        L9_3 = G
        L9_3 = L9_3.EvolveBuildLevelRewardLoopListRowBinder
        L6_3 = L6_3(L7_3, L8_3, L9_3)
        L5_3 = L6_3
        L7_3 = L5_3
        L6_3 = L5_3.bind
        L8_3 = L4_3.transform
        L6_3(L7_3, L8_3)
        L4_3.UserObjectData = L5_3
      end
      L7_3 = L5_3
      L6_3 = L5_3.setup_view
      L8_3 = L0_1.TotalExp
      L9_3 = L0_1.ReceivedFameLevel
      L6_3(L7_3, L8_3, L9_3)
      return L4_3
    else
      L5_3 = A1_3
      L4_3 = A1_3.NewListViewItem
      L6_3 = 0
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = L4_3.UserObjectData
      if L5_3 == nil then
        L7_3 = A0_3
        L6_3 = A0_3.create_panel
        L8_3 = G
        L8_3 = L8_3.EvolveBuildLevelRewardListRow
        L9_3 = G
        L9_3 = L9_3.EvolveBuildLevelRewardListRowBinder
        L6_3 = L6_3(L7_3, L8_3, L9_3)
        L5_3 = L6_3
        L7_3 = L5_3
        L6_3 = L5_3.bind
        L8_3 = L4_3.transform
        L6_3(L7_3, L8_3)
        L4_3.UserObjectData = L5_3
      end
      L7_3 = L5_3
      L6_3 = L5_3.setup_view
      L8_3 = L3_3
      L9_3 = L0_1.TotalExp
      L10_3 = L0_1.ReceivedFameLevel
      L6_3(L7_3, L8_3, L9_3, L10_3)
      return L4_3
    end
  end
  L17_2 = nil
  L18_2 = A0_2
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L13_2 = CS
  L13_2 = L13_2.UnityEngine
  L13_2 = L13_2.UI
  L13_2 = L13_2.LayoutRebuilder
  L13_2 = L13_2.ForceRebuildLayoutImmediate
  L14_2 = A0_2._binder
  L14_2 = L14_2.right_panel
  L13_2(L14_2)
  L13_2 = A0_2._binder
  L13_2 = L13_2.reward_list
  L14_2 = L13_2
  L13_2 = L13_2.SetListItemCount
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  L13_2 = A0_2._binder
  L13_2 = L13_2.reward_list
  L14_2 = L13_2
  L13_2 = L13_2.RefreshAllShownItem
  L13_2(L14_2)
  L13_2 = CS
  L13_2 = L13_2.RPG
  L13_2 = L13_2.Client
  L13_2 = L13_2.CoroutineUtils
  L13_2 = L13_2.InvokeNextFrame
  function L14_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = G
    L0_3 = L0_3.MathUtils
    L0_3 = L0_3.get_clamp
    L1_3 = L0_1.ReceivedFameLevel
    L2_3 = 0
    L3_3 = L0_1.FameOnceRewardNum
    L3_3 = L3_3 - 1
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    L1_3 = A0_2._binder
    L1_3 = L1_3.reward_list
    L2_3 = L1_3
    L1_3 = L1_3.MovePanelToItemIndex
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.set_navigation_target
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3.get_first_selected_object
    L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L3_3(L4_3)
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    L1_3 = 0
    L2_3 = L12_2
    L2_3 = L2_3 - 1
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = A0_2._binder
      L5_3 = L5_3.reward_list
      L6_3 = L5_3
      L5_3 = L5_3.GetShownItemByItemIndex
      L7_3 = L4_3
      L5_3 = L5_3(L6_3, L7_3)
      if L5_3 then
        L6_3 = L5_3.UserObjectData
        L7_3 = L4_3 - L0_3
        L9_3 = L6_3
        L8_3 = L6_3.play_anim
        L10_3 = L7_3
        L8_3(L9_3, L10_3)
      end
    end
  end
  L13_2(L14_2)
  if L3_2 < L8_2 then
    L13_2 = A0_2._binder
    L13_2 = L13_2.left_panel_anim
    L14_2 = L13_2
    L13_2 = L13_2.Play
    L15_2 = "UI_EvolveLvRewardPage_LevelUp"
    L13_2(L14_2, L15_2)
  end
  L14_2 = A0_2
  L13_2 = A0_2._add_notify_handler
  L15_2 = G
  L15_2 = L15_2.CS
  L15_2 = L15_2.NotifyType
  L15_2 = L15_2.UIAnimationEvent
  function L16_2(A0_3)
    local L1_3, L2_3, L3_3
    L2_3 = A0_3
    L1_3 = A0_3._setup_fame_level
    L3_3 = L7_2
    L1_3(L2_3, L3_3)
  end
  L13_2(L14_2, L15_2, L16_2)
  L13_2 = L0_1.TotalExp
  L0_1.LastSeenTotalExp = L13_2
  L14_2 = A0_2
  L13_2 = A0_2._on_enter_zoom
  L15_2 = NavigationZoneType
  L15_2 = L15_2.Zone1
  L13_2(L14_2, L15_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
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
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.MathUtils
  L1_2 = L1_2.get_clamp
  L2_2 = L0_1.ReceivedFameLevel
  L3_2 = 0
  L4_2 = L0_1.FameOnceRewardNum
  L4_2 = L4_2 - 1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = L2_2.gameObject
    if L3_2 then
      goto lbl_20
    end
  end
  L3_2 = nil
  ::lbl_20::
  return L3_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A1_2.ItemList_
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.ItemFactory
    L8_2 = L8_2.CreateDisplayItemData
    L9_2 = L7_2.ItemId
    L10_2 = L7_2.Num
    L11_2 = L7_2.Level
    L12_2 = L7_2.UniqueId
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.sort_reward_item
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_show
  L4_2 = "Ui.Common.RewardDialog"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_list
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L1_1._on_take_reward = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.level_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  if A1_2 ~= nil then
    L4_2 = A1_2.Level
    if L4_2 then
      goto lbl_10
    end
  end
  L4_2 = 0
  ::lbl_10::
  L2_2(L3_2, L4_2)
end
L1_1._setup_fame_level = L2_1
return L1_1
