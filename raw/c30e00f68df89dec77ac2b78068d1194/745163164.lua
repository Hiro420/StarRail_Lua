local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityQuestTimeLimit.QuestTimeLimitFindTreasureTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityQuestTimeLimit.QuestTimeLimitItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityQuestTimeLimit.QuestTimeLimitItemPanelFindTreasureBinder"
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
L1_1 = L1_1.QuestModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "QuestTimeLimitFindTreasureTabItem"
L4_1 = G
L4_1 = L4_1.TabItem
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetActivityQuestTimeLimitData
  L2_2 = L2_2(L3_2)
  A0_2._activity_data = L2_2
  A0_2._quest_group_row = A1_2
  L2_2 = {}
  A0_2._porp_state_quest_list = L2_2
  L2_2 = {}
  A0_2._open_chest_quest_list = L2_2
  L2_2 = 0
  L3_2 = A0_2._quest_group_row
  L3_2 = L3_2.QuestList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.QuestDataExcelTable
    L6_2 = L6_2.GetData
    L7_2 = A0_2._quest_group_row
    L7_2 = L7_2.QuestList
    L7_2 = L7_2[L5_2]
    L6_2 = L6_2(L7_2)
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.FinishWayExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2.FinishWayID
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2.FinishType
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.QuestFinishType
    L9_2 = L9_2.PropStateChangeWithSpecificPropId
    if L8_2 == L9_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._porp_state_quest_list
      L10_2 = A0_2._quest_group_row
      L10_2 = L10_2.QuestList
      L10_2 = L10_2[L5_2]
      L8_2(L9_2, L10_2)
    else
      L8_2 = L7_2.FinishType
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.QuestFinishType
      L9_2 = L9_2.TreasureChestOpenWithWorld
      if L8_2 == L9_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = A0_2._open_chest_quest_list
        L10_2 = A0_2._quest_group_row
        L10_2 = L10_2.QuestList
        L10_2 = L10_2[L5_2]
        L8_2(L9_2, L10_2)
      end
    end
  end
end
L2_1.setup_quest_group_row = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._prop_state_panels = L1_2
  L1_2 = {}
  A0_2._open_chest_panels = L1_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_list_prop_state
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.QuestTimeLimitItemPanel
    L8_2 = G
    L8_2 = L8_2.QuestTimeLimitItemPanelFindTreasureBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_item_list_prop_state
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._prop_state_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_list_open_chest
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.QuestTimeLimitItemPanel
    L8_2 = G
    L8_2 = L8_2.QuestTimeLimitItemPanelFindTreasureBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_item_list_open_chest
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._open_chest_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityQuestTimeLimitRewardTab"
  L4_2 = A0_2._quest_group_row
  L4_2 = L4_2.QuestTimeLimitGroupID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L2_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._quest_group_row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title_en
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._quest_group_row
  L3_2 = L3_2.EnName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._quest_group_row
  L1_2 = L1_2.FigurePath
  if L1_2 ~= "" then
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_icon
    L4_2 = A0_2._quest_group_row
    L4_2 = L4_2.FigurePath
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_icon_unselect
    L4_2 = A0_2._quest_group_row
    L4_2 = L4_2.FigurePath
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.GetFinishedQuestCount
  L3_2 = A0_2._quest_group_row
  L3_2 = L3_2.QuestTimeLimitGroupID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_current
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._quest_group_row
  L4_2 = L4_2.QuestList
  L4_2 = L4_2.Length
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._quest_group_row
  L4_2 = L4_2.QuestList
  L4_2 = L4_2.Length
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._quest_group_row
  L4_2 = L4_2.QuestList
  L4_2 = L4_2.Length
  L4_2 = L1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = 0
  L3_2 = nil
  L4_2 = 1
  L5_2 = A0_2._prop_state_panels
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._porp_state_quest_list
    L8_2 = L8_2[L7_2]
    if L8_2 ~= nil then
      L8_2 = A0_2._prop_state_panels
      L8_2 = L8_2[L7_2]
      L9_2 = L8_2
      L8_2 = L8_2.safe_set_active
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._prop_state_panels
      L8_2 = L8_2[L7_2]
      L9_2 = L8_2
      L8_2 = L8_2.setup_view
      L10_2 = A0_2._porp_state_quest_list
      L10_2 = L10_2[L7_2]
      L8_2(L9_2, L10_2)
      L8_2 = L1_1
      L9_2 = L8_2
      L8_2 = L8_2.TryGetQuestData
      L10_2 = A0_2._porp_state_quest_list
      L10_2 = L10_2[L7_2]
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L8_2.TotalProgress
      if L2_2 < L9_2 then
        L3_2 = L8_2
      end
    else
      L8_2 = A0_2._prop_state_panels
      L8_2 = L8_2[L7_2]
      L9_2 = L8_2
      L8_2 = L8_2.safe_set_active
      L10_2 = false
      L8_2(L9_2, L10_2)
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_prop_cur_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2.Progress
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_prop_total_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2.TotalProgress
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_progress_prop_state
  L5_2 = L3_2.Progress
  L6_2 = L3_2.TotalProgress
  L5_2 = L5_2 / L6_2
  L4_2.fillAmount = L5_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_prop_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.DataRow
  L6_2 = L6_2.QuestTitle
  L7_2 = L3_2.FinishWayRow
  L7_2 = L7_2.ParamInt1
  L8_2 = L3_2.FinishWayRow
  L8_2 = L8_2.ParamInt2
  L9_2 = L3_2.FinishWayRow
  L9_2 = L9_2.ParamInt3
  L10_2 = L3_2.TotalProgress
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = 0
  L3_2 = nil
  L4_2 = 1
  L5_2 = A0_2._open_chest_panels
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._open_chest_quest_list
    L8_2 = L8_2[L7_2]
    if L8_2 ~= nil then
      L8_2 = A0_2._open_chest_panels
      L8_2 = L8_2[L7_2]
      L9_2 = L8_2
      L8_2 = L8_2.safe_set_active
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._open_chest_panels
      L8_2 = L8_2[L7_2]
      L9_2 = L8_2
      L8_2 = L8_2.setup_view
      L10_2 = A0_2._open_chest_quest_list
      L10_2 = L10_2[L7_2]
      L8_2(L9_2, L10_2)
      L8_2 = L1_1
      L9_2 = L8_2
      L8_2 = L8_2.TryGetQuestData
      L10_2 = A0_2._open_chest_quest_list
      L10_2 = L10_2[L7_2]
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L8_2.TotalProgress
      if L2_2 < L9_2 then
        L3_2 = L8_2
      end
    else
      L8_2 = A0_2._open_chest_panels
      L8_2 = L8_2[L7_2]
      L9_2 = L8_2
      L8_2 = L8_2.safe_set_active
      L10_2 = false
      L8_2(L9_2, L10_2)
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_chest_cur_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2.Progress
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_chest_total_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2.TotalProgress
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_progress_open_chest
  L5_2 = L3_2.Progress
  L6_2 = L3_2.TotalProgress
  L5_2 = L5_2 / L6_2
  L4_2.fillAmount = L5_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_chest_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.DataRow
  L6_2 = L6_2.QuestTitle
  L7_2 = L3_2.FinishWayRow
  L7_2 = L7_2.ParamInt1
  L8_2 = L3_2.FinishWayRow
  L8_2 = L8_2.ParamInt2
  L9_2 = L3_2.FinishWayRow
  L9_2 = L9_2.ParamInt3
  L10_2 = L3_2.TotalProgress
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L2_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1.move_panel_to_first = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._open_chest_panels
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._open_chest_panels
    L1_2 = L1_2[1]
    L2_2 = L1_2
    L1_2 = L1_2.get_navigation_btn_gameobject
    return L1_2(L2_2)
  end
  L1_2 = nil
  return L1_2
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_navigation_btn_gameobject = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._click_cbk
  if L1_2 then
    L1_2 = A0_2._click_cbk_owner
    if L1_2 then
      L1_2 = A0_2._click_cbk
      L2_2 = A0_2._click_cbk_owner
      L3_2 = A0_2._quest_group_row
      L3_2 = L3_2.QuestTimeLimitGroupID
      L1_2(L2_2, L3_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L2_1._on_select = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk = A1_2
  A0_2._click_cbk_owner = A2_2
end
L2_1.register_click_callback = L3_1
return L2_1
