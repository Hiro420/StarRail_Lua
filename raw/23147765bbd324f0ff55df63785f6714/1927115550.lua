local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Tutorial.WikipediaOverviewPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.WikipediaTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Tutorial.WikipediaTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WikipediaOverviewPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.WikipediaOverviewPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._tab_index = 1
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_10::
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_prev
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._select_prev = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.select_next
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._select_next = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear
  L4_2 = A0_2._on_btn_clear
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = A0_2._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = A0_2._select_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Common.PageNumPanel"
  L6_2 = "Ui.Common.PageNumPanelBinder"
  L7_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._page_num_list = L1_2
  L1_2 = A0_2._page_num_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_page_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_search
  L1_2 = L1_2.onValueFinalChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_search
  L1_2 = L1_2.onValueFinalChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_2._binder
    if L1_3 == nil then
      return
    end
    L1_3 = CS
    L1_3 = L1_3.System
    L1_3 = L1_3.String
    L1_3 = L1_3.IsNullOrEmpty
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_clear
    L3_3 = L2_3
    L2_3 = L2_3.SafeSetActive
    L4_3 = not L1_3
    L2_3(L3_3, L4_3)
    L2_3 = A0_2._binder
    L2_3 = L2_3.node_result_panel
    L3_3 = L2_3
    L2_3 = L2_3.SafeSetActive
    L4_3 = not L1_3
    L2_3(L3_3, L4_3)
    L2_3 = A0_2._tab_control
    L2_3 = L2_3.current_select_item
    L3_3 = L2_3
    L2_3 = L2_3.clear_filter
    L2_3(L3_3)
    L2_3 = A0_2._tab_control
    L2_3 = L2_3.current_select_item
    L3_3 = L2_3
    L2_3 = L2_3.filter
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = A0_2._binder
    L3_3 = L3_3.text_search_result
    L4_3 = L3_3
    L3_3 = L3_3.SafeSetText
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_tabs
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._tab_index
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_left_panel
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._init_ui_navigation
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TutorialGuideGroupTypeExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.TutorialModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.get_all_available_guides
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.get_row
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2.TutorialType
    L3_2[L9_2] = true
  end
  while true do
    L5_2 = L1_2
    L4_2 = L1_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L1_2.Current
    L4_2 = L4_2.Value
    L5_2 = L4_2.TutorialType
    if L5_2 ~= 0 then
      L5_2 = L4_2.TutorialType
      L5_2 = L3_2[L5_2]
      if not L5_2 then
        goto lbl_60
      end
    end
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.WikipediaTabItem
    L8_2 = G
    L8_2 = L8_2.WikipediaTabItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_tab_root
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = L4_2.TutorialType
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.set_tab_image
    L8_2 = L4_2.MessageIconPath
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.set_page_num_list_panel
    L8_2 = A0_2._page_num_list
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    ::lbl_60::
  end
end
L0_1._init_tabs = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TutorialGuideGroupTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = L2_2
  L2_2 = L2_2.get_type
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_sub_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.MessageTitle
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_btn_clear
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_next_frame_callback
  L3_2 = A0_2.force_set_first_navigation_target
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1._on_tab_select_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.input_search
  L1_2.text = nil
end
L0_1._on_btn_clear = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.TutorialModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.show_and_clear_reward
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
return L0_1
