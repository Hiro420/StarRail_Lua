local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Tutorial.WikipediaTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.TitleInfoRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.TitleInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.PageNumPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.PageNumPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WikipediaTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "#E88000"
function L2_1(A0_2)
  local L1_2
  A0_2._cur_content = nil
  A0_2._cur_content_index = nil
  A0_2._cur_page_index = 0
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.title_listview
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.String
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    A0_2._filter_text = A1_2
    L2_2 = A0_2._display_data
    L3_2 = {}
    A0_2._display_data = L3_2
    L3_2 = {}
    A0_2._display_data_title = L3_2
    L3_2 = ipairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = G
      L8_2 = L8_2.TextmapStatic
      L8_2 = L8_2.GetText
      L10_2 = L7_2
      L9_2 = L7_2.get_row
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2.MessageText
      L8_2 = L8_2(L9_2)
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.Client
      L9_2 = L9_2.UITextUtils
      L9_2 = L9_2.DoSearchString
      L10_2 = L8_2
      L11_2 = A1_2
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 ~= nil then
        L10_2 = A0_2._display_data
        L11_2 = A0_2._display_data
        L11_2 = #L11_2
        L11_2 = L11_2 + 1
        L10_2[L11_2] = L7_2
        L10_2 = A0_2._display_data_title
        L11_2 = A0_2._display_data_title
        L11_2 = #L11_2
        L11_2 = L11_2 + 1
        L12_2 = {}
        L13_2 = L8_2
        L14_2 = L9_2[0]
        L15_2 = L9_2[1]
        L12_2[1] = L13_2
        L12_2[2] = L14_2
        L12_2[3] = L15_2
        L10_2[L11_2] = L12_2
      end
    end
  else
    A0_2._filter_text = nil
    A0_2._display_data_title = nil
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = A0_2._display_data_title
  if L2_2 ~= nil then
    L2_2 = A0_2._display_data_title
    L2_2 = #L2_2
    if L2_2 then
      goto lbl_66
    end
  end
  L2_2 = 0
  ::lbl_66::
  return L2_2
end
L0_1.filter = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._all_data
  A0_2._display_data = L1_2
  A0_2._display_data_title = nil
end
L0_1.clear_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._all_data = L1_2
  L1_2 = G
  L1_2 = L1_2.TutorialModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.get_all_available_guides
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2._should_show_guide
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = A0_2._all_data
      L8_2 = A0_2._all_data
      L8_2 = #L8_2
      L8_2 = L8_2 + 1
      L7_2[L8_2] = L6_2
    end
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._all_data
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L3_3 = A0_3
    L2_3 = A0_3.get_row
    L2_3 = L2_3(L3_3)
    L4_3 = A1_3
    L3_3 = A1_3.get_row
    L3_3 = L3_3(L4_3)
    L4_3 = A0_2._type
    if L4_3 == 0 then
      L4_3 = A0_3.status
      L5_3 = A1_3.status
      if L4_3 ~= L5_3 then
        L4_3 = A0_3.status
        L5_3 = G
        L5_3 = L5_3.TutorialModule
        L5_3 = L5_3.Instance
        L5_3 = L5_3.TutorialStatus
        L5_3 = L5_3.TutorialUnlock
        L4_3 = L4_3 == L5_3
        return L4_3
      end
      L4_3 = L2_3.TutorialType
      L5_3 = L3_3.TutorialType
      if L4_3 ~= L5_3 then
        L4_3 = L2_3.TutorialType
        L5_3 = L3_3.TutorialType
        L4_3 = L4_3 < L5_3
        return L4_3
      end
    end
    L4_3 = L2_3.Order
    L5_3 = L3_3.Order
    if L4_3 ~= L5_3 then
      L4_3 = L2_3.Order
      L5_3 = L3_3.Order
      L4_3 = L4_3 > L5_3
      return L4_3
    end
    L4_3 = L2_3.GroupID
    L5_3 = L3_3.GroupID
    L4_3 = L4_3 > L5_3
    return L4_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._all_data
  A0_2._display_data = L2_2
  A0_2._display_data_title = nil
end
L0_1._load_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._type
  L2_2 = L2_2 == 0
  return L2_2
end
L0_1._should_show_guide = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.TitleInfoRowPanel
    L8_2 = G
    L8_2 = L8_2.TitleInfoRowPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._display_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A2_2 + 1
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._display_data_title
  if L6_2 ~= nil then
    L6_2 = A0_2._display_data_title
    L7_2 = A2_2 + 1
    L6_2 = L6_2[L7_2]
    L8_2 = L4_2
    L7_2 = L4_2.set_customize_title
    L9_2 = L6_2[1]
    L7_2(L8_2, L9_2)
    L8_2 = L4_2
    L7_2 = L4_2.set_high_light
    L9_2 = L6_2[2]
    L10_2 = L6_2[3]
    L11_2 = L1_1
    L7_2(L8_2, L9_2, L10_2, L11_2)
  else
    L7_2 = L4_2
    L6_2 = L4_2.set_title
    L9_2 = L5_2
    L8_2 = L5_2.get_row
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2.MessageText
    L6_2(L7_2, L8_2)
  end
  L7_2 = L4_2
  L6_2 = L4_2.bind_click
  L8_2 = A0_2
  L9_2 = A0_2._on_list_item_click
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_locked
  L8_2 = false
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_selected
  L8_2 = A0_2._cur_content
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._cur_content
  if L5_2 == L6_2 then
    A0_2._cur_selected_panel = L4_2
  end
  L7_2 = L4_2
  L6_2 = L4_2.get_node_red_dot
  L6_2 = L6_2(L7_2)
  if L6_2 ~= nil then
    L7_2 = G
    L7_2 = L7_2.RedDotModule
    L7_2 = L7_2.Instance
    L8_2 = L7_2
    L7_2 = L7_2.bind_reddot
    L10_2 = L5_2
    L9_2 = L5_2.get_reddot_key
    L9_2 = L9_2(L10_2)
    L10_2 = L5_2.id
    L11_2 = L4_2
    L12_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  return L3_2
end
L0_1._on_content_change = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._cur_content_index
  if L4_2 == A1_2 and not A3_2 then
    return
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_content
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._display_data
  L6_2 = #L6_2
  L6_2 = A1_2 <= L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._display_data
  L4_2 = #L4_2
  if A1_2 > L4_2 then
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._set_cur_content_index
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  A0_2._cur_page_index = 0
  L4_2 = G
  L4_2 = L4_2.TutorialModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.finish_guide
  L6_2 = A0_2._cur_content
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_cur_selected_panel
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_content
  L4_2(L5_2)
end
L0_1._on_list_item_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._display_data
  L2_2 = L2_2[A1_2]
  A0_2._cur_content = L2_2
  A0_2._cur_content_index = A1_2
end
L0_1._set_cur_content_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._type = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._load_data
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  if A1_2 ~= nil then
    A0_2._image_path = A1_2
  end
end
L0_1.set_tab_image = L2_1
function L2_1(A0_2, A1_2)
  A0_2._page_num_list = A1_2
end
L0_1.set_page_num_list_panel = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._type
  return L1_2
end
L0_1.get_type = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_page
  L1_2(L2_2)
end
L0_1._refresh_content = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_content
  L2_2 = L1_2
  L1_2 = L1_2.get_row
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.TutorialGuideIDList
  L3_2 = A0_2._cur_page_index
  L2_2 = L2_2[L3_2]
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.GetGuideDataRow
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.page_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L1_2.MessageText
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.page_content
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.DescText
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.LayoutRebuilder
  L4_2 = L4_2.ForceRebuildLayoutImmediate
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_title
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._load_image
  L6_2 = L3_2.ImagePath
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_page_num_list
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_button_state
  L4_2(L5_2)
end
L0_1._refresh_page = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.String
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = not L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_page_image
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if not L2_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.page_image
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._load_image = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2._cur_content
  L4_2 = L3_2
  L3_2 = L3_2.get_row
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.TutorialGuideIDList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = #L1_2
    L8_2 = L8_2 + 1
    L9_2 = A0_2._cur_page_index
    L9_2 = L5_2 == L9_2
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2._page_num_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_page_num_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.pre_page_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L4_2 = A0_2
  L3_2 = A0_2._is_first_page
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._is_first_content
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2 or L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.next_page_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L4_2 = A0_2
  L3_2 = A0_2._is_last_page
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._is_last_content
  L3_2 = L3_2(L4_2)
  L3_2 = not L3_2 or L3_2
  L1_2(L2_2, L3_2)
end
L0_1._set_button_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_first_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._cur_page_index
    L1_2 = L1_2 - 1
    A0_2._cur_page_index = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._refresh_page
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._is_first_content
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.title_listview
      L2_2 = L1_2
      L1_2 = L1_2.SetSelectIndex
      L3_2 = A0_2._cur_content_index
      L3_2 = L3_2 - 1
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._on_list_item_click
      L3_2 = A0_2._cur_content_index
      L3_2 = L3_2 - 1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.title_listview
      L2_2 = L1_2
      L1_2 = L1_2.RefreshAllShownItem
      L1_2(L2_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.title_listview
      L2_2 = L1_2
      L1_2 = L1_2.SelectPreview
      L1_2(L2_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.title_listview
      L1_2 = L1_2.CurSelectedObject
      L2_2 = G
      L2_2 = L2_2.UtilEngineWrap
      L2_2 = L2_2.IsCsObjectNull
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_pre_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_last_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._cur_page_index
    L1_2 = L1_2 + 1
    A0_2._cur_page_index = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._refresh_page
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._is_last_content
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.title_listview
      L2_2 = L1_2
      L1_2 = L1_2.SetSelectIndex
      L3_2 = A0_2._cur_content_index
      L3_2 = L3_2 - 1
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._on_list_item_click
      L3_2 = A0_2._cur_content_index
      L3_2 = L3_2 + 1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.title_listview
      L2_2 = L1_2
      L1_2 = L1_2.RefreshAllShownItem
      L1_2(L2_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.title_listview
      L2_2 = L1_2
      L1_2 = L1_2.SelectNext
      L1_2(L2_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.title_listview
      L1_2 = L1_2.CurSelectedObject
      L2_2 = G
      L2_2 = L2_2.UtilEngineWrap
      L2_2 = L2_2.IsCsObjectNull
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_next_btn_click = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_page_index
  L1_2 = L1_2 == 0
  return L1_2
end
L0_1._is_first_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_page_index
  L2_2 = A0_2._cur_content
  L3_2 = L2_2
  L2_2 = L2_2.get_row
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.TutorialGuideIDList
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_last_page = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_content_index
  if L1_2 then
    L1_2 = A0_2._cur_content_index
    L1_2 = L1_2 == 1
  end
  return L1_2
end
L0_1._is_first_content = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_content_index
  if L1_2 then
    L1_2 = A0_2._cur_content_index
    L2_2 = A0_2._display_data
    L2_2 = #L2_2
    L1_2 = L1_2 == L2_2
  end
  return L1_2
end
L0_1._is_last_content = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._image_path
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_unselect
    L4_2 = A0_2._image_path
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_select
    L4_2 = A0_2._image_path
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.pre_page_btn
  L4_2 = A0_2._on_pre_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.next_page_btn
  L4_2 = A0_2._on_next_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.clear_filter
  L1_2(L2_2)
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._display_data
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._display_data
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_list_item_click
  L3_2 = 1
  L4_2 = nil
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.title_listview
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_content_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.title_listview
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._display_data
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.title_listview
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.title_listview
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._type
  if L1_2 == 0 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "TutorialType_"
  L4_2 = tonumber
  L5_2 = A0_2._type
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_selected_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_selected_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_selected
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._cur_selected_panel = A1_2
  if A1_2 ~= nil then
    L3_2 = A1_2
    L2_2 = A1_2.set_selected
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_cur_selected_panel = L2_1
return L0_1
