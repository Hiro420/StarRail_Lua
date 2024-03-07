local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityCardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityCardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FightActivity.FightActivityDetailPage"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FightActivityModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "FightActivityPage"
L4_1 = G
L4_1 = L4_1.BasePage
L2_1 = L2_1(L3_1, L4_1)
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.QuestModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.FightActivityUtils
L4_1 = L4_1.ExtraRewardQuestID
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FightActivityPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._activity_data = nil
  A0_2._group_infos = nil
  L1_2 = {}
  A0_2._loop_list_item = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L2_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2
  L6_2 = A1_2 or nil
  if not A1_2 then
    L6_2 = false
  end
  A0_2.is_from_activity_panel = L6_2
  A0_2._auto_show_group_id = A2_2
  A0_2._auto_show_difficulty_level = A3_2
  A0_2._is_battle_win = A4_2
  A0_2._total_rounds = A5_2
end
L2_1.init = L5_1
function L5_1(A0_2, A1_2)
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
L2_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L2_1._init_ui_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._auto_show_group_id
  if L1_2 ~= nil then
    L1_2 = 0
    L2_2 = A0_2._group_infos
    L2_2 = L2_2.Count
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._binder
      L5_2 = L5_2.scroll_view
      L6_2 = L5_2
      L5_2 = L5_2.GetShownItemByItemIndex
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 ~= nil then
        L6_2 = L5_2.UserObjectData
        L6_2 = L6_2._group_id
        L7_2 = A0_2._auto_show_group_id
        if L6_2 == L7_2 then
          L6_2 = L5_2.UserObjectData
          L6_2 = L6_2._binder
          L6_2 = L6_2.btn_root
          L6_2 = L6_2.gameObject
          return L6_2
        end
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L2_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.JLBLDDICCEL
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_arrow_left
  L4_2 = A0_2._on_btn_left
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_arrow_right
  L4_2 = A0_2._on_btn_right
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_box_reward
  L4_2 = A0_2._on_btn_box_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_arrow_and_index
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_panel_content
  L2_2 = L2_2.transform
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "FightActivityRewardExtra"
  L4_2 = 0
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.box_reward_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._card_panels = nil
  A0_2._activity_data = nil
  A0_2._auto_show_difficulty_level = nil
  A0_2._group_infos = nil
end
L2_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._cur_index = 0
  A0_2._current_item_index = 2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetFightActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L1_2 = A0_2._activity_data
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._show_feature_close_toast
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_show_unlock_toast
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_time
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_set_last_battle_group_center
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_card_interactable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_card_interactable
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.mOnFadeInEndAction = L2_2
end
L2_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._auto_show_group_id
  if L1_2 ~= nil then
    L1_2 = 0
    L2_2 = A0_2._group_infos
    L2_2 = L2_2.Count
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._group_infos
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.GroupRow
      L5_2 = L5_2.ActivityFightGroupID
      L6_2 = A0_2._auto_show_group_id
      if L5_2 == L6_2 then
        L5_2 = math
        L5_2 = L5_2.max
        L6_2 = 0
        L7_2 = A0_2._binder
        L7_2 = L7_2.scroll_view
        L7_2 = L7_2.ItemCountOneScreen
        L7_2 = L7_2 // 2
        L7_2 = L4_2 - L7_2
        L5_2 = L5_2(L6_2, L7_2)
        A0_2._cur_index = L5_2
        L5_2 = math
        L5_2 = L5_2.min
        L6_2 = A0_2._cur_index
        L7_2 = A0_2._max_index
        L5_2 = L5_2(L6_2, L7_2)
        A0_2._cur_index = L5_2
        L5_2 = A0_2._binder
        L5_2 = L5_2.scroll_view
        L6_2 = L5_2
        L5_2 = L5_2.MovePanelToSnapPivotByItemIndex
        L7_2 = A0_2._cur_index
        L5_2(L6_2, L7_2)
        L6_2 = A0_2
        L5_2 = A0_2._refresh_arrow_and_index
        L5_2(L6_2)
        L5_2 = A0_2._binder
        L5_2 = L5_2.scroll_view
        L6_2 = L5_2
        L5_2 = L5_2.PlayFadeIn
        L5_2(L6_2)
        break
      end
    end
  end
end
L2_1._try_set_last_battle_group_center = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.FightActivityUnlockToastGroupID
  if L1_2 ~= 0 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Activity.FightActivity.FightActivityNewHardUnlockDialog"
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L3_2 = L3_2.FightActivityUnlockToastGroupID
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2.FightActivityUnlockToastGroupID = 0
  end
end
L2_1._try_show_unlock_toast = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.EndTimeDate
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L2_1._setup_remain_time = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  if L3_2 then
    L3_2 = A0_2._activity_data
    L3_2 = L3_2.TitleName
    if L3_2 then
      goto lbl_12
    end
  end
  L3_2 = "UIText_ActivityFight_ActivityTitle"
  ::lbl_12::
  L1_2(L2_2, L3_2)
end
L2_1._setup_title = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 0
  L3_2 = A0_2._loop_list_item
  L3_2 = #L3_2
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._loop_list_item
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_btn_interactable
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
  end
end
L2_1._setup_card_interactable = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_cards
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_arrow_and_index
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_progress
  L1_2(L2_2)
end
L2_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.FightActivityUtils
  L1_2 = L1_2.GetInScheduleFightGroups
  L1_2 = L1_2()
  A0_2._group_infos = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._group_infos
  L3_2 = L3_2.Count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._group_infos
  L1_2 = L1_2.Count
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view
  L2_2 = L2_2.ItemCountOneScreen
  L1_2 = L1_2 - L2_2
  A0_2._max_index = L1_2
end
L2_1._refresh_cards = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_arrow
  L1_2(L2_2)
  L1_2 = A0_2._cur_index
  L3_2 = A0_2
  L2_2 = A0_2._refresh_cur_index
  L2_2(L3_2)
  L2_2 = A0_2._cur_index
  if L2_2 ~= L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_arrow
    L2_2(L3_2)
  end
end
L2_1._refresh_arrow_and_index = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.IsContainnerTransCanMoveToDirection
  L3_2 = false
  L4_2 = 1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L1_2 = A0_2._cur_index
    if L1_2 ~= 0 then
      goto lbl_22
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_arrow_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  goto lbl_27
  ::lbl_22::
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_arrow_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  ::lbl_27::
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.IsContainnerTransCanMoveToDirection
  L3_2 = true
  L4_2 = 1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L1_2 = A0_2._cur_index
    L2_2 = A0_2._max_index
    if L1_2 ~= L2_2 then
      goto lbl_45
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_arrow_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  goto lbl_50
  ::lbl_45::
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_arrow_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  ::lbl_50::
end
L2_1._refresh_arrow = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.IsContainnerTransCanMoveToDirection
  L3_2 = true
  L4_2 = 1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    L1_2 = A0_2._max_index
    A0_2._cur_index = L1_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_view
    L2_2 = L1_2
    L1_2 = L1_2.IsContainnerTransCanMoveToDirection
    L3_2 = false
    L4_2 = 1
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if not L1_2 then
      A0_2._cur_index = 0
    else
      L2_2 = A0_2
      L1_2 = A0_2._cal_cur_index
      L1_2(L2_2)
    end
  end
end
L2_1._refresh_cur_index = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L1_2 = L1_2.ItemList
  L2_2 = A0_2._max_index
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L7_2 = L7_2.LeftX
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_sroll_list_content
    L8_2 = L8_2.anchoredPosition3D
    L8_2 = L8_2.x
    L8_2 = -L8_2
    if L7_2 >= L8_2 then
      L7_2 = math
      L7_2 = L7_2.min
      L8_2 = L2_2
      L9_2 = L1_2[L6_2]
      L9_2 = L9_2.ItemIndex
      L7_2 = L7_2(L8_2, L9_2)
      L2_2 = L7_2
    end
  end
  A0_2._cur_index = L2_2
end
L2_1._cal_cur_index = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.Progress
  L3_2 = L1_2.TotalProgress
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_cur_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_total_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = L1_2.Status
  L5_2 = CS
  L5_2 = L5_2.BLHLCHNAJKK
  L5_2 = L5_2.FMLBEGJJHMJ
  L4_2 = L4_2 == L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_box_reward
  L6_2 = not L4_2
  L5_2.interactable = L6_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_box_reward_got
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L2_1._refresh_progress = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.FightActivityCardPanel
  L8_2 = G
  L8_2 = L8_2.FightActivityCardPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._group_infos
  L7_2 = L7_2[A2_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.try_play_anim
  L5_2(L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.setup_height
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._loop_list_item
  L5_2[A2_2] = L4_2
  return L3_2
end
L2_1._on_item_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._on_btn_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.IsContainnerTransCanMoveToDirection
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_index
  L1_2 = L1_2 - 1
  if 0 <= L1_2 then
    L2_2 = A0_2._max_index
    if L1_2 <= L2_2 then
      A0_2._cur_index = L1_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.scroll_view
      L3_2 = L2_2
      L2_2 = L2_2.MovePanelToSnapPivotByItemIndex
      L4_2 = A0_2._cur_index
      L2_2(L3_2, L4_2)
    end
  end
end
L2_1._on_btn_left = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.IsContainnerTransCanMoveToDirection
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_index
  L1_2 = L1_2 + 1
  if 0 <= L1_2 then
    L2_2 = A0_2._max_index
    if L1_2 <= L2_2 then
      A0_2._cur_index = L1_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.scroll_view
      L3_2 = L2_2
      L2_2 = L2_2.MovePanelToSnapPivotByItemIndex
      L4_2 = A0_2._cur_index
      L2_2(L3_2, L4_2)
    end
  end
end
L2_1._on_btn_right = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2.__name
  L3_2 = ""
  L4_2 = "BoxRewardBtn"
  L5_2 = A0_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.Status
  L3_2 = CS
  L3_2 = L3_2.BLHLCHNAJKK
  L3_2 = L3_2.CDJHHIHBNMN
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_NetworkManager
    L3_2 = L2_2
    L2_2 = L2_2.AMFNHGKACLB
    L4_2 = L4_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.QuestDataExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L4_1
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.RewardExcelTable
      L3_2 = L3_2.GetData
      L4_2 = L2_2.RewardID
      L3_2 = L3_2(L4_2)
      L4_2 = G
      L4_2 = L4_2.UIManager
      L4_2 = L4_2.load_and_show
      L5_2 = "Ui.Common.ItemDetailDialog"
      L4_2 = L4_2(L5_2)
      L6_2 = L4_2
      L5_2 = L4_2.setup_view
      L7_2 = L3_2.ItemID_1
      L5_2(L6_2, L7_2)
    end
  end
end
L2_1._on_btn_box_reward = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L2_1._on_quest_get_reward = L5_1
function L5_1(A0_2)
  local L1_2
end
L2_1._expire_call_back = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkHint
  L2_2 = "UIText_Toast_System_Off_Tips_1"
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  L1_2(L2_2, L3_2)
end
L2_1._show_feature_close_toast = L5_1
return L2_1
