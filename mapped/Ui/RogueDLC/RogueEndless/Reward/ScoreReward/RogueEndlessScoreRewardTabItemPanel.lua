local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.Reward.ScoreReward.RogueEndlessScoreRewardInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.Reward.ScoreReward.RogueEndlessScoreRewardInfoPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RogueModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueEndlessScoreRewardTabItemPanel"
L3_1 = G
L3_1 = L3_1.TabItem
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_reward_item_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessRewardGot
  L4_2 = L1_1._on_endless_reward_got
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get_all
  L4_2 = A0_2._on_btn_get_all
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._reward_row_list = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.RogueEndlessScoreRewardInfoPanel
    L8_2 = G
    L8_2 = L8_2.RogueEndlessScoreRewardInfoPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_row_list
  L5_2 = #L5_2
  L5_2 = A2_2 == L5_2
  if L5_2 then
    L7_2 = L4_2
    L6_2 = L4_2.setup_view_for_over_bonus
    L8_2 = A0_2._finite_max_score
    L6_2(L7_2, L8_2)
  else
    L6_2 = A0_2._reward_row_list
    L6_2 = #L6_2
    L6_2 = L6_2 - 1
    if A2_2 == L6_2 then
      L7_2 = L4_2
      L6_2 = L4_2.setup_view
      L8_2 = A0_2._reward_row_list
      L9_2 = A2_2 + 1
      L8_2 = L8_2[L9_2]
      L9_2 = A0_2._reward_row_list
      L10_2 = A2_2 + 1
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.RewardPoint
      L10_2 = L0_1.RogueEndlessConstValue
      L10_2 = L10_2.OverBonusPoint
      L9_2 = L9_2 + L10_2
      L6_2(L7_2, L8_2, L9_2)
    else
      L7_2 = L4_2
      L6_2 = L4_2.setup_view
      L8_2 = A0_2._reward_row_list
      L9_2 = A2_2 + 1
      L8_2 = L8_2[L9_2]
      L9_2 = A0_2._reward_row_list
      L10_2 = A2_2 + 2
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.RewardPoint
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  return L3_2
end
L1_1._on_reward_item_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityRewardRogueEndlessExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_dict
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._reward_row_list = L2_2
  L2_2 = A0_2._reward_row_list
  L3_2 = A0_2._reward_row_list
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.RewardPoint
  A0_2._finite_max_score = L2_2
end
L1_1._init_reward_list = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_score
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward_list
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn_get_all
  L2_2(L3_2)
end
L1_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_left_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityRogueEndless_OverBonus_Tietle"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_score
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = L0_1.EndlessPoint
  L1_2(L2_2, L3_2)
end
L1_1._setup_score = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward_item_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._reward_row_list
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  if A1_2 then
    L2_2 = math
    L2_2 = L2_2.max
    L4_2 = A0_2
    L3_2 = A0_2._get_first_reward_index_not_got
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2 - 1
    L4_2 = 0
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_reward_item_list
    L4_2 = L3_2
    L3_2 = L3_2.MovePanelToItemIndex
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward_item_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L1_1._setup_reward_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._reward_row_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._is_common_reward_can_get
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      return L4_2
    end
  end
  L1_2 = A0_2._reward_row_list
  L1_2 = #L1_2
  L1_2 = L1_2 + 1
  return L1_2
end
L1_1._get_first_reward_index_not_got = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_get_all
  L3_2 = A0_2
  L2_2 = A0_2._has_reward_to_get
  L2_2 = L2_2(L3_2)
  L1_2.interactable = L2_2
end
L1_1._setup_btn_get_all = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._reward_row_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._is_common_reward_can_get
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_over_bonus_reward_can_get
  return L1_2(L2_2)
end
L1_1._has_reward_to_get = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._init_reward_list
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RogueEndlessScoreReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.tab_node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_anim_reward_remind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L1_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_unselect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.NCCDCDHBGDJ
  L1_2(L2_2)
end
L1_1._on_btn_get_all = L2_1
function L2_1(A0_2, A1_2)
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
  L2_2 = A0_2._state
  L3_2 = L1_1.SelectState
  L3_2 = L3_2.Selected
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L1_1._on_endless_reward_got = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_anim_reward_remind_played
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_play_common_reward_remind
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_over_bonus_reward_remind
  L1_2(L2_2)
  A0_2._is_anim_reward_remind_played = true
end
L1_1._try_play_anim_reward_remind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._reward_row_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._is_common_reward_can_get
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._try_play_anim_by_index
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
    end
  end
end
L1_1._try_play_common_reward_remind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_over_bonus_reward_can_get
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._try_play_anim_by_index
    L3_2 = A0_2._reward_row_list
    L3_2 = #L3_2
    L3_2 = L3_2 + 1
    L1_2(L2_2, L3_2)
  end
end
L1_1._try_play_over_bonus_reward_remind = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward_item_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      L3_2 = L2_2.UserObjectData
      L5_2 = L3_2
      L4_2 = L3_2.try_play_anime_finish
      L4_2(L5_2)
    end
  end
end
L1_1._try_play_anim_by_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1.EndlessPoint
  L3_2 = L0_1.EndlessPointRewardTakenList
  L4_2 = A1_2.RewardPoint
  L5_2 = L3_2
  L4_2 = L3_2.Contains
  L6_2 = A1_2.RewardLevel
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L2_2 >= L4_2 and L4_2
  return L4_2
end
L1_1._is_common_reward_can_get = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1.EndlessPoint
  L2_2 = L0_1.RogueEndlessConstValue
  L2_2 = L2_2.OverBonusPoint
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 0
  L5_2 = L0_1.EndlessPoint
  L6_2 = A0_2._finite_max_score
  L5_2 = L5_2 - L6_2
  L6_2 = L0_1.EndlessOverBonusRewardTakenTime
  L6_2 = L6_2 * L2_2
  L5_2 = L5_2 - L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L1_2 = L3_2
  L3_2 = L2_2 <= L1_2
  return L3_2
end
L1_1._is_over_bonus_reward_can_get = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.max
  L3_2 = A0_2
  L2_2 = A0_2._get_first_reward_index_not_got
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 - 1
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_reward_item_list
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      goto lbl_20
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_20::
  L3_2 = L2_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  return L3_2(L4_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = 35
  return L1_2
end
L1_1.get_short_cut_hint = L2_1
return L1_1
