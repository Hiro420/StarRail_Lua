local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassQuestListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassQuestItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassQuestItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ScheduleModule
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "BattlePassQuestListPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BPQuestType
  L1_2 = L1_2.None
  A0_2._type = L1_2
  L1_2 = {}
  A0_2._quest_datas = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_quests
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_quest_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_quests
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L3_1.play_fade_in = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_quest_datas
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_quests
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._quest_datas
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_quests
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L3_1._refresh_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDisplayQuestDatas
  L4_2 = A0_2._type
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._quest_datas = L1_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._quest_datas
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = A0_3.QuestData
    L2_3 = L2_3.Status
    L3_3 = A1_3.QuestData
    L3_3 = L3_3.Status
    if L2_3 ~= L3_3 then
      L4_3 = A0_2
      L5_3 = L4_3
      L4_3 = L4_3._get_quest_status_value
      L6_3 = L2_3
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = A0_2
      L6_3 = L5_3
      L5_3 = L5_3._get_quest_status_value
      L7_3 = L3_3
      L5_3 = L5_3(L6_3, L7_3)
      L4_3 = L4_3 < L5_3
      return L4_3
    end
    L4_3 = A0_3.StartTimeStamp
    L5_3 = A1_3.StartTimeStamp
    if L4_3 ~= L5_3 then
      L6_3 = L4_3 > L5_3
      return L6_3
    end
    L6_3 = A0_3.SortValue
    L7_3 = A1_3.SortValue
    if L6_3 ~= L7_3 then
      L6_3 = A0_3.SortValue
      L7_3 = A1_3.SortValue
      L6_3 = L6_3 > L7_3
      return L6_3
    end
    L6_3 = A0_3.QuestID
    L7_3 = A1_3.QuestID
    L6_3 = L6_3 < L7_3
    return L6_3
  end
  L1_2(L2_2, L3_2)
end
L3_1._refresh_quest_datas = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.BLHLCHNAJKK
  L2_2 = L2_2.CDJHHIHBNMN
  if A1_2 == L2_2 then
    L2_2 = 1
    return L2_2
  else
    L2_2 = CS
    L2_2 = L2_2.BLHLCHNAJKK
    L2_2 = L2_2.BMEAGBEFNFK
    if A1_2 == L2_2 then
      L2_2 = 2
      return L2_2
    else
      L2_2 = CS
      L2_2 = L2_2.BLHLCHNAJKK
      L2_2 = L2_2.FMLBEGJJHMJ
      if A1_2 == L2_2 then
        L2_2 = 3
        return L2_2
      end
    end
  end
end
L3_1._get_quest_status_value = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._quest_datas
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = L3_2.ScheduleData
  if L6_2 == nil then
    L6_2 = 0
    if L6_2 then
      goto lbl_12
    end
  end
  L6_2 = 1
  ::lbl_12::
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.BattlePassQuestItemPanel
    L9_2 = G
    L9_2 = L9_2.BattlePassQuestItemPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
    L7_2 = L5_2
    L6_2 = L5_2.register_end_callback
    L8_2 = A0_2._refresh_view
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  return L4_2
end
L3_1._on_quest_item_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_quests
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L4_2 = L2_2
  L3_2 = L2_2.get_first_selected_object
  return L3_2(L4_2)
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_quests
  L2_2 = L1_2
  L1_2 = L1_2.ClearFocusCache
  L1_2(L2_2)
end
L3_1.clear_navi = L4_1
return L3_1
