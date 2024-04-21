local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerHandbookDrinkStepPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendMenuModePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendMenuModePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_DrinkMaker_StepErrorHint"
L2_1 = "UIText_DrinkMaker_Menu_UnlockCondition"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_making_step
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_making_steps_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_procedure
  L1_2 = #L1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DrinkMakerBartendProcedure
  L2_2 = L2_2.Ingredient
  L2_2 = #L2_2
  L1_2 = L1_2 >= L2_2
  return L1_2
end
L0_1.is_can_to_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_tag_display
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cur_procedure = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_tag_display
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A0_2._cur_procedure
  L4_2 = #L4_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.DrinkMakerBartendProcedure
  L5_2 = L5_2.Ingredient
  L5_2 = #L5_2
  L4_2 = L4_2 >= L5_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_basic_desc_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_single_steps_view
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_display_tag
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  return L1_2
end
L0_1.get_cur_scroll_rect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._cur_procedure = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_tag_display
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A0_2._cur_procedure
  L4_2 = #L4_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.DrinkMakerBartendProcedure
  L5_2 = L5_2.Ingredient
  L5_2 = #L5_2
  L4_2 = L4_2 >= L5_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_single_steps_view
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_display_tag
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_single_steps_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.refresh_targets = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_display_tag
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.refresh_tags = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._making_steps
  L2_2 = A0_2._making_steps
  L2_2 = #L2_2
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.IsStepFinished
  if L2_2 then
    L2_2 = L1_2.IsCurSuccess
  end
  L3_2 = L1_1
  return L2_2, L3_2
end
L0_1.check_if_current_step_finished = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "RequestData"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.TargetDrink
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L5_2 = L2_2
  L4_2 = L2_2.GetCurProcedureMakingStep
  L6_2 = A0_2._cur_procedure
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2._making_steps = L3_2
  A0_2._start_offset = nil
  A0_2._cur_finish_step_offset = 0
  L3_2 = ipairs
  L4_2 = A0_2._making_steps
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Procedure
    L9_2 = A0_2._cur_procedure
    if L8_2 == L9_2 then
      L8_2 = A0_2._start_offset
      if L8_2 == nil then
        L8_2 = L6_2 - 1
        A0_2._start_offset = L8_2
      end
    end
    L8_2 = L7_2.IsCurSuccess
    if L8_2 then
      L8_2 = L7_2.IsStepFinished
      if L8_2 then
        A0_2._cur_finish_step_offset = L6_2
      end
    end
  end
  L3_2 = A0_2._start_offset
  if L3_2 == nil then
    A0_2._start_offset = 0
  end
end
L0_1._setup_steps_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.get_blackboard
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.query
  L3_2 = "RequestData"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.TargetDrink
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_drink_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_drink_desc
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_drink_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.Desc
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_drink_icon
  L6_2 = L2_2.SmallIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_unlock_text
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.DrinkMakerLevelExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2.Row
    L4_2 = L4_2.UnlockParam
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_unlock_text
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L2_1
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L3_2.DrinkMakerLevel
    L7_2, L8_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._setup_basic_desc_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_steps_data
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_content
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_making_step
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._making_steps
  L4_2 = #L4_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  if not A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_rect
    L3_2 = L2_2
    L2_2 = L2_2.CanScroll
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.list_making_step
      L3_2 = L2_2
      L2_2 = L2_2.MovePanelToByItemIndexAndOffsetPercent
      L4_2 = A0_2._cur_finish_step_offset
      L5_2 = 1.0
      L6_2 = true
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_making_step
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemIndex
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._owner
    L3_2 = L2_2
    L2_2 = L2_2.report_wait_scroll_update
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_making_step
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._setup_single_steps_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._cur_procedure
  L2_2 = #L2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.DrinkMakerBartendProcedure
  L3_2 = L3_2.Ingredient
  L3_2 = #L3_2
  L2_2 = L2_2 >= L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_tag_display
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.get_blackboard
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.query
    L5_2 = "DrinkData"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_tag_display
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = L3_2
    L7_2 = A1_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._refresh_display_tag = L3_1
function L3_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.DrinkMakerHandbookDrinkStepPanel
    L8_2 = G
    L8_2 = L8_2.DrinkMakerHandbookDrinkStepPanelBinder
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
  L7_2 = A0_2._making_steps
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = true
  L9_2 = A2_2 + 1
  L10_2 = A0_2._start_offset
  L9_2 = L9_2 + L10_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L5_2 = L4_2.setup_tail_line_visibility
  L7_2 = A2_2 + 1
  L8_2 = A0_2._making_steps
  L8_2 = #L8_2
  L7_2 = L7_2 ~= L8_2
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = L3_2.transform
  L5_2(L6_2)
  return L3_2
end
L0_1._on_making_steps_changed = L3_1
return L0_1
