local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonQuestListTabItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.OutsideReward.ChessRogueRewardInfoItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Reward.Components.RogueNousQuestRewardTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousQuestRewardTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_RogueNous_Diffcult_Task_Unlock_Tip_1"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "RogueNous_DifficultyLevel_UnlockQuestID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.IntValue
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._data = A3_2
  A0_2._cur_select_panel = nil
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._quest_datas_table = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.QuestDataList
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._quest_datas_table
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_tab
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_tab_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_tab
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._quest_datas_table
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_tab
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_default_select_index
  L1_2 = L1_2(L2_2)
  A0_2._selected_index = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_tab
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._selected_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L4_2 = L2_2
    L3_2 = L2_2.set_selected
    L5_2 = true
    L6_2 = true
    L7_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_first_selected_tab_object
    return L2_2(L3_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if L1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_first_selected_quest_object
      return L2_2(L3_2)
    end
  end
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._get_default_select_index
  L1_2 = L1_2(L2_2)
  A0_2._selected_index = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_tab
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._selected_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_35
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_tab
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = A0_2._selected_index
  L4_2 = L4_2 - 1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_tab
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A0_2._selected_index
  L4_2 = L4_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L2_2
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_35
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_35::
  L2_2 = L1_2.UserObjectData
  L4_2 = L2_2
  L3_2 = L2_2.set_selected
  L5_2 = true
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = L2_2
  L3_2 = L2_2.get_first_selected_object
  return L3_2(L4_2)
end
L0_1._get_first_selected_tab_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_quest
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = L1_2.UserObjectData
  L2_2 = L2_2._binder
  L2_2 = L2_2.btn_root
  L2_2 = L2_2.gameObject
  return L2_2
end
L0_1._get_first_selected_quest_object = L3_1
function L3_1(A0_2, A1_2)
  A0_2._reddot_key = A1_2
end
L0_1.set_reddot_key = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = ipairs
  L2_2 = A0_2._quest_datas_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = ipairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = L10_2.Status
      L12_2 = CS
      L12_2 = L12_2.BLHLCHNAJKK
      L12_2 = L12_2.CDJHHIHBNMN
      if L11_2 == L12_2 then
        return L4_2
      end
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1.get_unclaimed_reward_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_unclaimed_reward_index
  L1_2 = L1_2(L2_2)
  if L1_2 ~= 0 then
    return L1_2
  end
  L2_2 = 1
  return L2_2
end
L0_1._get_default_select_index = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  A0_2._selected_sorted_quest_data = L2_2
  L2_2 = G
  L2_2 = L2_2.QuestUtils
  L2_2 = L2_2.sort_quest_datas_stabled
  L3_2 = A0_2._selected_quest_datas
  L2_2 = L2_2(L3_2)
  A0_2._selected_sorted_quest_data = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_quest
  L3_2 = L2_2
  L2_2 = L2_2.SafeInitListView
  L4_2 = 0
  L5_2 = A0_2._on_quest_item_changed
  L6_2 = nil
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_quest
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._selected_sorted_quest_data
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_quest
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_quest
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
  if A1_2 then
    L2_2 = A0_2._cur_select_panel
    if L2_2 ~= nil then
      L2_2 = A0_2._cur_select_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = A0_2._selected_quest_datas
      L5_2 = A0_2._cur_select_panel
      L6_2 = L5_2
      L5_2 = L5_2.get_index
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L0_1.refresh_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = A0_2.uid
  L5_2 = L5_2 - 1
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_22
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.CommonQuestListTabItemPanel
  L8_2 = G
  L8_2 = L8_2.CommonQuestListTabItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_22::
  L6_2 = L4_2
  L5_2 = L4_2.set_custom_lock
  L7_2 = A0_2._data
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.IsUnlock
  L7_2 = not L7_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._quest_datas_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A2_2 + 1
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2._on_tab_clicked
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_title_name
  L7_2 = A0_2._data
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.TabTitle
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.bind_reddot
  L7_2 = A0_2._reddot_key
  L8_2 = A0_2._data
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2.ID
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_tab_item_changed = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = A0_2.uid
  L5_2 = L5_2 - 1
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_22
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.ChessRogueRewardInfoItemPanel
  L8_2 = G
  L8_2 = L8_2.ChessRogueRewardInfoItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_22::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._selected_sorted_quest_data
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._is_unlock_tab
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_quest_item_changed = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._selected_quest_datas = A1_2
  A0_2._is_unlock_tab = A2_2
  L5_2 = A0_2._cur_select_panel
  if L5_2 ~= nil then
    L5_2 = A0_2._cur_select_panel
    if L5_2 ~= A4_2 then
      L5_2 = A0_2._cur_select_panel
      L6_2 = L5_2
      L5_2 = L5_2.set_selected
      L7_2 = false
      L8_2 = false
      L5_2(L6_2, L7_2, L8_2)
    end
  end
  A0_2._cur_select_panel = A4_2
  L5_2 = A0_2._cur_select_panel
  L6_2 = L5_2
  L5_2 = L5_2.get_index
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._data
  L6_2 = L6_2[L5_2]
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_unlock_tip
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = A0_2._is_unlock_tab
  L9_2 = not L9_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_unlock_tip
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetTextID
  L9_2 = L6_2.UnlockText
  L10_2 = L6_2.UnlockTextParam
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2.refresh_view
  L9_2 = false
  L7_2(L8_2, L9_2)
end
L0_1._on_tab_clicked = L3_1
return L0_1
