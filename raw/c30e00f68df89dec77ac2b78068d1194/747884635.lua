local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureIntroItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureIntroItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureIntroTitleItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureIntroTitleItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureBgPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TravelBrochureIntroChapterPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TravelBrochureBgPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_bg = L1_2
  L1_2 = A0_2._panel_bg
  L2_2 = L1_2
  L1_2 = L1_2.init_node
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_back
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._diary_data = A1_2
  L3_2 = A2_2 == 1
  A0_2._is_first = L3_2
  L3_2 = A0_2._panel_bg
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._diary_data
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A0_2._diary_data
  L4_2 = L4_2.ChoiceGroupRow
  L4_2 = L4_2.TextIDList
  L3_2 = L3_2(L4_2)
  A0_2._choice_ids = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._choice_ids
  L5_2 = #L5_2
  L5_2 = L5_2 + 1
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_short_cut_hint_panel
  L5_2 = 8
  L6_2 = A0_2._binder
  L6_2 = L6_2.scroll_rect
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_bg
  L2_2 = L1_2
  L1_2 = L1_2.play_first_in
  L1_2(L2_2)
end
L0_1.play_first_in = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 == 0 then
    L4_2 = A0_2
    L3_2 = A0_2._on_title_item_changed
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._on_content_item_changed
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_item_changed = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
  L7_2 = L7_2.TravelBrochureIntroItemPanel
  L8_2 = G
  L8_2 = L8_2.TravelBrochureIntroItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L5_2 = A0_2._choice_ids
  L5_2 = L5_2[A2_2]
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.TravelBrochureDiaryChoiceExcelTable
  L6_2 = L6_2.GetData
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L6_2.ChoiceMessage
  L10_2 = A0_2._is_first
  L10_2 = A2_2 or L10_2
  if not L10_2 or not A2_2 then
    L10_2 = nil
  end
  L7_2(L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_content_item_changed = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 1
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
  L7_2 = L7_2.TravelBrochureIntroTitleItemPanel
  L8_2 = G
  L8_2 = L8_2.TravelBrochureIntroTitleItemPanelBinder
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
  L7_2 = A0_2._diary_data
  L7_2 = L7_2.Name
  L8_2 = A0_2._diary_data
  L8_2 = L8_2.ChoiceGroupRow
  L8_2 = L8_2.DiaryDescription
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_title_item_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 8
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.refresh_short_cut_hint = L1_1
return L0_1
