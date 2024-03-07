local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAetherDivide.ActivityAetherDivideMainRightListItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAetherDivide.ActivityAetherDivideMainRightListItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityAetherDivideMainRightListPanel"
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
  L1_2 = {}
  A0_2._quest_id_table = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_quest
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_quest_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_quest
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
  local L2_2, L3_2
  A0_2._activity_data = A1_2
  L2_2 = A0_2._activity_data
  L3_2 = L2_2
  L2_2 = L2_2.SetSeen
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_quest_id_table
  L2_2 = L2_2(L3_2)
  A0_2._quest_id_table = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_quest_item_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_lock_info
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._activity_data
  L2_2 = L2_2.QuestIDList
  L1_2 = L1_2(L2_2)
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L2_3 = L1_1
    L3_3 = L2_3
    L2_3 = L2_3.TryGetQuestData
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = L1_1
    L4_3 = L3_3
    L3_3 = L3_3.TryGetQuestData
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    if L2_3 == nil and L3_3 ~= nil then
      L4_3 = false
      return L4_3
    elseif L2_3 ~= nil and L3_3 == nil then
      L4_3 = true
      return L4_3
    elseif L2_3 == nil and L3_3 == nil then
      L4_3 = true
      return L4_3
    end
    L4_3 = L2_3.Status
    L5_3 = L3_3.Status
    if L4_3 ~= L5_3 then
      L4_3 = L2_3.Status
      L5_3 = CS
      L5_3 = L5_3.BLHLCHNAJKK
      L5_3 = L5_3.CDJHHIHBNMN
      L4_3 = L4_3 == L5_3
      return L4_3
    else
      L4_3 = CS
      L4_3 = L4_3.RPG
      L4_3 = L4_3.GameCore
      L4_3 = L4_3.QuestDataExcelTable
      L4_3 = L4_3.GetData
      L5_3 = A0_3
      L4_3 = L4_3(L5_3)
      L5_3 = CS
      L5_3 = L5_3.RPG
      L5_3 = L5_3.GameCore
      L5_3 = L5_3.RewardExcelTable
      L5_3 = L5_3.GetData
      L6_3 = L4_3.RewardID
      L5_3 = L5_3(L6_3)
      if L5_3 ~= nil then
        L6_3 = L5_3.IsSpecial
        if L6_3 then
          goto lbl_69
        end
      end
      L6_3 = false
      ::lbl_69::
      L7_3 = CS
      L7_3 = L7_3.RPG
      L7_3 = L7_3.GameCore
      L7_3 = L7_3.QuestDataExcelTable
      L7_3 = L7_3.GetData
      L8_3 = A1_3
      L7_3 = L7_3(L8_3)
      L8_3 = CS
      L8_3 = L8_3.RPG
      L8_3 = L8_3.GameCore
      L8_3 = L8_3.RewardExcelTable
      L8_3 = L8_3.GetData
      L9_3 = L7_3.RewardID
      L8_3 = L8_3(L9_3)
      if L8_3 ~= nil then
        L9_3 = L8_3.IsSpecial
        if L9_3 then
          goto lbl_89
        end
      end
      L9_3 = false
      ::lbl_89::
      if L6_3 ~= L9_3 then
        return L6_3
      else
        L10_3 = A0_3 < A1_3
        return L10_3
      end
    end
  end
  L2_2(L3_2, L4_2)
  return L1_2
end
L0_1._get_quest_id_table = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._expire_call_back = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._quest_id_table
  L1_2 = #L1_2
  L1_2 = L1_2 == 0
  return L1_2
end
L0_1.is_empty = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_quest
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_quest
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._quest_id_table
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_quest
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_quest
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_listview_quest
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._setup_quest_item_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ActivityAetherDivideDataStatus
  L4_2 = L4_2.Locked
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._activity_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ActivityAetherDivideDataStatus
  L2_2 = L2_2.Locked
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_remain_timer
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._activity_data
    L4_2 = L3_2
    L3_2 = L3_2.IsInSchedule
    L3_2 = L3_2(L4_2)
    L3_2 = not L3_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_condtion_lock
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._activity_data
    L4_2 = L3_2
    L3_2 = L3_2.CheckUnlockCondition
    L3_2 = L3_2(L4_2)
    L3_2 = not L3_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._activity_data
    L2_2 = L1_2
    L1_2 = L1_2.IsInSchedule
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.remain_timer
      L2_2 = L1_2
      L1_2 = L1_2.SetTargetTimeByTimeStamp
      L3_2 = A0_2._activity_data
      L3_2 = L3_2.BeginTimeStamp
      L4_2 = A0_2._expire_call_back
      L5_2 = A0_2
      L6_2 = 2
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
    L1_2 = A0_2._activity_data
    L2_2 = L1_2
    L1_2 = L1_2.CheckUnlockCondition
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.GameCore
      L1_2 = L1_2.FuncUnlockConfigExcelTable
      L1_2 = L1_2.GetData
      L2_2 = A0_2._activity_data
      L2_2 = L2_2.UnlockID
      L1_2 = L1_2(L2_2)
      L2_2 = tonumber
      L3_2 = L1_2.Param
      L2_2 = L2_2(L3_2)
      L3_2 = L1_2.Type
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.ConditionType
      L4_2 = L4_2.FinishMainMission
      if L3_2 == L4_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.txt_condition_lock
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = "GotoTips_Name_1"
        L6_2 = L2_2
        L3_2(L4_2, L5_2, L6_2)
      else
        L3_2 = L1_2.Type
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.ConditionType
        L4_2 = L4_2.PlayerLevel
        if L3_2 == L4_2 then
          L3_2 = A0_2._binder
          L3_2 = L3_2.txt_condition_lock
          L4_2 = L3_2
          L3_2 = L3_2.SafeSetTextID
          L5_2 = "UIText_Mission_BeginType_Tips_5"
          L6_2 = L2_2
          L3_2(L4_2, L5_2, L6_2)
        else
          L3_2 = L1_2.Type
          L4_2 = CS
          L4_2 = L4_2.RPG
          L4_2 = L4_2.GameCore
          L4_2 = L4_2.ConditionType
          L4_2 = L4_2.WorldLevel
          if L3_2 == L4_2 then
            L3_2 = A0_2._binder
            L3_2 = L3_2.txt_condition_lock
            L4_2 = L3_2
            L3_2 = L3_2.SafeSetTextID
            L5_2 = "UIText_Mission_BeginType_Tips_6"
            L6_2 = L2_2
            L3_2(L4_2, L5_2, L6_2)
          end
        end
      end
    end
  end
end
L0_1._setup_lock_info = L2_1
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
    L7_2 = L7_2.ActivityAetherDivideMainRightListItem
    L8_2 = G
    L8_2 = L8_2.ActivityAetherDivideMainRightListItemBinder
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
  L7_2 = A0_2._quest_id_table
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._activity_data
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = L4_2._binder
  L6_2 = L6_2.root
  L5_2(L6_2)
  return L3_2
end
L0_1._on_quest_item_change = L2_1
return L0_1
