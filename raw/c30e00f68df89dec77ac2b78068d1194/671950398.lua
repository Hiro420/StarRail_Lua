local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.Income.HeliobusIncomeRewardListPanelItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.Income.HeliobusIncomeRewardListPanelItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusIncomeRewardListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = {}
  A0_2._turn_receive_anim_level_table = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_reward
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
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  A0_2._turn_receive_anim_level_table = A1_2
end
L0_1.set_play_turn_receive_anim_level_table = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  A0_2._reward_data_table = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_reward_data_table
  L2_2 = L2_2(L3_2)
  A0_2._reward_data_table = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_quest_item_list
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusRewardExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = L3_2.RewardQuestID
    if L4_2 ~= 0 then
      L4_2 = {}
      L5_2 = L1_1
      L6_2 = L5_2
      L5_2 = L5_2.TryGetQuestData
      L7_2 = L3_2.RewardQuestID
      L5_2 = L5_2(L6_2, L7_2)
      L4_2.QuestData = L5_2
      L5_2 = L3_2.Level
      L4_2.IncomeLevel = L5_2
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = L1_2
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L1_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.QuestData
    L2_3 = L2_3.Status
    L3_3 = A1_3.QuestData
    L3_3 = L3_3.Status
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.QuestData
      L2_3 = L2_3.Status
      L3_3 = CS
      L3_3 = L3_3.LEOGBBOPKKO
      L3_3 = L3_3.JKFPIINHGPD
      L2_3 = L2_3 == L3_3
      return L2_3
    else
      L2_3 = A0_3.IncomeLevel
      L3_3 = A1_3.IncomeLevel
      if L2_3 ~= L3_3 then
        L2_3 = A0_3.IncomeLevel
        L3_3 = A1_3.IncomeLevel
        L2_3 = L2_3 < L3_3
        return L2_3
      else
        L2_3 = A0_3.QuestData
        L2_3 = L2_3.ID
        L3_3 = A1_3.QuestData
        L3_3 = L3_3.ID
        L2_3 = L2_3 < L3_3
        return L2_3
      end
    end
  end
  L3_2(L4_2, L5_2)
  return L1_2
end
L0_1._get_reward_data_table = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._reward_data_table
  L1_2 = #L1_2
  L1_2 = L1_2 == 0
  return L1_2
end
L0_1.is_empty = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_reward
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_listview_reward
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._reward_data_table
  L4_2 = #L4_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_listview_reward
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_listview_reward
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = 0
  L2_2(L3_2, L4_2)
  if A1_2 ~= true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.loop_listview_reward
    L3_2 = L2_2
    L2_2 = L2_2.PlayFadeIn
    L2_2(L3_2)
  end
end
L0_1._setup_quest_item_list = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HeliobusIncomeRewardListPanelItem
    L8_2 = G
    L8_2 = L8_2.HeliobusIncomeRewardListPanelItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._reward_data_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.index_of_item
  L6_2 = A0_2._turn_receive_anim_level_table
  L7_2 = A0_2._reward_data_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L7_2 = L7_2.IncomeLevel
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 ~= nil then
    L7_2 = L4_2
    L6_2 = L4_2.play_turn_receive_anim
    L6_2(L7_2)
    L6_2 = table
    L6_2 = L6_2.remove
    L7_2 = A0_2._turn_receive_anim_level_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L4_2._binder
  L7_2 = L7_2.root
  L6_2(L7_2)
  return L3_2
end
L0_1._on_reward_item_change = L2_1
return L0_1
