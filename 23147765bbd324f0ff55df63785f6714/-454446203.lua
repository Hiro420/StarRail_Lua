local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityQuestTimeLimit.QuestTimeLimitWarReporterTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityQuestTimeLimit.QuestTimeLimitItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityQuestTimeLimit.QuestTimeLimitItemPanelWarReportBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityQuestTimeLimit.QuestTimeLimitItemPanelWarReportSingleBinder"
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
L3_1 = "QuestTimeLimitWarReporterTabItem"
L4_1 = G
L4_1 = L4_1.TabItem
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetActivityQuestTimeLimitData
  L2_2 = L2_2(L3_2)
  A0_2._activity_data = L2_2
  A0_2._quest_group_row = A1_2
end
L2_1.setup_quest_group_row = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._item_panels = L1_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = nil
    if L4_2 <= 3 then
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.QuestTimeLimitItemPanel
      L9_2 = G
      L9_2 = L9_2.QuestTimeLimitItemPanelWarReportSingleBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    else
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.QuestTimeLimitItemPanel
      L9_2 = G
      L9_2 = L9_2.QuestTimeLimitItemPanelWarReportBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    end
    L7_2 = L5_2
    L6_2 = L5_2.register_on_select_callback
    L8_2 = A0_2._on_select_callback
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_item_list
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._item_panels
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
  L2_2 = A0_2
  L1_2 = A0_2._init_quest_list
  L1_2(L2_2)
end
L2_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L2_2 = 1
  L3_2 = A0_2._item_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._quest_group_row
    L6_2 = L6_2.QuestList
    L6_2 = L6_2.Length
    if L5_2 <= L6_2 then
      L6_2 = A0_2._quest_group_row
      L6_2 = L6_2.QuestList
      L7_2 = L5_2 - 1
      L6_2 = L6_2[L7_2]
      L7_2 = A0_2._item_panels
      L7_2 = L7_2[L5_2]
      L8_2 = L7_2
      L7_2 = L7_2.setup_view
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._item_panels
      L7_2 = L7_2[L5_2]
      L8_2 = L7_2
      L7_2 = L7_2.safe_set_active
      L9_2 = true
      L7_2(L8_2, L9_2)
    else
      L6_2 = A0_2._item_panels
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.safe_set_active
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
end
L2_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._item_panels
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._item_panels
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
  local L1_2
end
L2_1.move_panel_to_first = L3_1
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
  L2_2 = A0_2
  L1_2 = A0_2._init_quest_list
  L1_2(L2_2)
end
L2_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = -1
  L2_2 = 0
  L3_2 = A0_2._quest_group_row
  L3_2 = L3_2.QuestList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._quest_group_row
    L6_2 = L6_2.QuestList
    L6_2 = L6_2[L5_2]
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.TryGetQuestData
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.Status
    L9_2 = CS
    L9_2 = L9_2.LEOGBBOPKKO
    L9_2 = L9_2.JKFPIINHGPD
    if L8_2 == L9_2 then
      L1_2 = L5_2
      break
    else
      L8_2 = L7_2.Status
      L9_2 = CS
      L9_2 = L9_2.LEOGBBOPKKO
      L9_2 = L9_2.KBBBFCIHJPC
      if L8_2 == L9_2 and L1_2 == -1 then
        L1_2 = L5_2
      end
    end
  end
  if L1_2 == -1 then
    A0_2.first_panel_index = 0
  else
    A0_2.first_panel_index = L1_2
  end
  L2_2 = A0_2._item_panels
  L3_2 = A0_2.first_panel_index
  L3_2 = L3_2 + 1
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2._binder
  L2_2 = L2_2.root
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_rect
    L3_2 = L2_2
    L2_2 = L2_2.ScrollToTransform
    L4_2 = A0_2._item_panels
    L5_2 = A0_2.first_panel_index
    L5_2 = L5_2 + 1
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2._binder
    L4_2 = L4_2.root
    L2_2(L3_2, L4_2)
  end
end
L2_1._init_quest_list = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect
  L3_2 = L2_2
  L2_2 = L2_2.ScrollToTransform
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._on_select_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk = A1_2
  A0_2._click_cbk_owner = A2_2
end
L2_1.register_click_callback = L3_1
return L2_1
