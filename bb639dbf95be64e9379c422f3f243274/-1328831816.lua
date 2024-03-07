local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Rogue.Reward.RogueScoreRewardDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Reward.Panels.RogueScoreRewardRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Reward.Panels.RogueScoreRewardRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueScoreRewardDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
L2_1 = "UIText_Rogue_Score_Reward_Title"
L3_1 = "UIText_Rogue_Score_Reward_Refresh_Tip"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueScoreRewardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._score_reward_row_table = nil
  A0_2._move_to_index = 1
  A0_2._cur_score = 0
  A0_2._max_score = 0
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._score_reward_data = A1_2
  if A2_2 then
    L3_2 = L3_1
    if L3_2 then
      goto lbl_8
    end
  end
  L3_2 = L2_1
  ::lbl_8::
  A0_2._title_text_id = L3_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._score_reward_data = nil
  A0_2._title_text_id = nil
  A0_2._score_reward_row_table = nil
  A0_2._cur_score = nil
  A0_2._max_score = nil
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_take_reward
  L4_2 = A0_2._on_btn_take_all_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_reward
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._title_text_id
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._title_text_id
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.FFKIBICFNCA
  L4_2 = A0_2._on_get_rogue_score_reward_info
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TakeRogueScoreNormalReward
  L4_2 = A0_2._on_take_rogue_score_reward
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._score_reward_data
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_NetworkManager
    L2_2 = L1_2
    L1_2 = L1_2.HLCFAFECKAC
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_content
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_orign_view_refresh
    L1_2(L2_2)
  end
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_showing_data
  L3_2 = A0_2._score_reward_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_remain_time
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_score_slider
  L3_2 = A0_2._cur_score
  L4_2 = A0_2._max_score
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_take_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._move_to_max_can_take
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_after_seconds_callback
  L2_2 = A0_2._play_reward_effect
  L3_2 = A0_2
  L4_2 = 1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_orign_view_refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueScoreRewardData
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTimeByTimeStamp
  L4_2 = L1_2.EndTimeStamp
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_remain_time = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2 = A1_2.GetCurScoreRewardRows
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._score_reward_row_table = L2_2
  L2_2 = A1_2.Score
  A0_2._cur_score = L2_2
  L3_2 = A1_2
  L2_2 = A1_2.GetMaxScore
  L2_2 = L2_2(L3_2)
  A0_2._max_score = L2_2
end
L0_1._init_showing_data = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_score_cur
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_score_max
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_slider
  L4_2 = L3_2
  L3_2 = L3_2.SetValue
  L5_2 = A1_2 / A2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_score_slider = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._score_reward_data
  L2_2 = L1_2
  L1_2 = L1_2.HasRewardCanTake
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_take_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_btn_take_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._score_reward_row_table
  if L1_2 == nil then
    L1_2 = 0
    if L1_2 then
      goto lbl_9
    end
  end
  L1_2 = A0_2._score_reward_row_table
  L1_2 = #L1_2
  ::lbl_9::
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list_reward
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = L1_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list_reward
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._setup_reward_list = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.RogueScoreRewardRowPanel
    L8_2 = G
    L8_2 = L8_2.RogueScoreRewardRowPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._score_reward_row_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = nil
  L7_2 = A0_2._score_reward_row_table
  L8_2 = A2_2 + 2
  L7_2 = L7_2[L8_2]
  if L7_2 ~= nil then
    L7_2 = A0_2._score_reward_row_table
    L8_2 = A2_2 + 2
    L7_2 = L7_2[L8_2]
    L6_2 = L7_2.Score
  end
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L5_2
  L10_2 = A0_2._score_reward_data
  L11_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.LayoutRebuilder
  L7_2 = L7_2.ForceRebuildLayoutImmediate
  L8_2 = L3_2.CachedRectTransform
  L7_2(L8_2)
  return L3_2
end
L0_1._on_reward_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_move_to_index
  L1_2(L2_2)
  L1_2 = A0_2._move_to_index
  L1_2 = L1_2 - 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list_reward
  L3_2 = L2_2
  L2_2 = L2_2.IsItemWithinViewport
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.loop_list_reward
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemIndex
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2._get_reward_selected_object
    L6_2 = L1_2
    L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._move_to_max_can_take = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.loop_list_reward
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_reward
  L1_2 = L1_2.ItemList
  if L1_2 ~= nil then
    L2_2 = L1_2.Count
    if L2_2 ~= 0 then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.UserObjectData
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.try_play_effect
      L8_2(L9_2)
    end
  end
end
L0_1._play_reward_effect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._move_to_index = nil
  L1_2 = 1
  L2_2 = ipairs
  L3_2 = A0_2._score_reward_row_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._score_reward_data
    L8_2 = L7_2
    L7_2 = L7_2.IsRewardRowCanTake
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      A0_2._move_to_index = L5_2
    end
    L7_2 = A0_2._score_reward_data
    L7_2 = L7_2.Score
    L8_2 = L6_2.Score
    if L7_2 >= L8_2 then
      L1_2 = L5_2 + 1
    end
  end
  L2_2 = A0_2._move_to_index
  if L2_2 == nil then
    L2_2 = math
    L2_2 = L2_2.min
    L3_2 = L1_2
    L4_2 = A0_2._score_reward_row_table
    L4_2 = #L4_2
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._move_to_index = L2_2
    L3_2 = A0_2
    L2_2 = A0_2.create_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ActionGroup_Select"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.create_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "ReceiveReward"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_move_to_index = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.loop_list_reward
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.loop_list_reward
      L3_2 = L2_2
      L2_2 = L2_2.GetShownItemByItemIndex
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 ~= nil then
        L3_2 = L2_2.UserObjectData
        L4_2 = L3_2
        L3_2 = L3_2.get_first_selected_object
        return L3_2(L4_2)
      end
    end
  end
end
L0_1._get_reward_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueScoreRewardData
  L1_2 = L1_2(L2_2)
  A0_2._score_reward_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._on_orign_view_refresh
  L1_2(L2_2)
end
L0_1._on_get_rogue_score_reward_info = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn_take_reward
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = A1_2
  L2_2(L3_2)
end
L0_1._on_take_rogue_score_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._score_reward_data
  if L1_2 ~= nil then
    L1_2 = A0_2._score_reward_row_table
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = nil
  L2_2 = ipairs
  L3_2 = A0_2._score_reward_row_table
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._score_reward_data
    L8_2 = L7_2
    L7_2 = L7_2.IsRewardRowCanTake
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      if L1_2 == nil then
        L7_2 = CS
        L7_2 = L7_2.System
        L7_2 = L7_2.Collections
        L7_2 = L7_2.Generic
        L7_2 = L7_2.List
        L8_2 = CS
        L8_2 = L8_2.System
        L8_2 = L8_2.UInt32
        L7_2 = L7_2(L8_2)
        L7_2 = L7_2()
        L1_2 = L7_2
      end
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L6_2.ScoreRow
      L7_2(L8_2, L9_2)
    end
  end
  if L1_2 ~= nil then
    L2_2 = L1_2.Count
    if L2_2 ~= 0 then
      goto lbl_43
    end
  end
  do return end
  ::lbl_43::
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.NIJNBICAPPA
  L4_2 = L4_2.NEFCGCMDLLH
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.OOGONDGGKMI
  L3_2 = L2_2
  L2_2 = L2_2.NCFHEMOAOLD
  L4_2 = A0_2._score_reward_data
  L4_2 = L4_2.PoolID
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_take_all_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_reward_selected_object
  L3_2 = A0_2._move_to_index
  if L3_2 then
    L3_2 = A0_2._move_to_index
    L3_2 = L3_2 - 1
    if L3_2 then
      goto lbl_10
    end
  end
  L3_2 = 0
  ::lbl_10::
  return L1_2(L2_2, L3_2)
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
return L0_1
