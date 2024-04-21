local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.Record.RogueEndlessRecordDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuBuffTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuBuffTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuMiracleTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Menu.RogueMenuMiracleTabItemBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RogueModule
L1_1 = 1
L2_1 = 0
L3_1 = "UIText_ActivityRogueEndless_Name"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "RogueEndlessRecordDetailPage"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueEndlessRecordDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._tab_control = nil
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  A0_2._data = A1_2
end
L4_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L1_2 = A0_2._create_tab_control
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_bg
  L2_2 = L1_2
  L1_2 = L1_2.load_bg_node
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_main_title
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L4_1._setup_main_title = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tab
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_buff_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_miracle_tab_item
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select_change
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._create_tab_control = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RogueMenuBuffTabItem
  L4_2 = G
  L4_2 = L4_2.RogueMenuBuffTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_buff
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_data
  L4_2 = A0_2._data
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentBuffs
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L4_1._init_buff_tab_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RogueMenuMiracleTabItem
  L4_2 = G
  L4_2 = L4_2.RogueMenuMiracleTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2.button_prefab_index = 0
  L3_2 = L1_2
  L2_2 = L1_2.set_async_bind_parent
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tab_miracle
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_data
  L4_2 = A0_2._data
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentMiracles
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.add_item
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L4_1._init_miracle_tab_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.get_tab_title
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  L2_2 = nil
  ::lbl_10::
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_sub_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  if L1_2 then
    L3_2 = L1_2.set_sub_title
    if L3_2 then
      L4_2 = L1_2
      L3_2 = L1_2.set_sub_title
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_sub_title
      L3_2(L4_2, L5_2)
    end
  end
end
L4_1._on_tab_select_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L4_1._on_btn_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.item_count
      L1_2 = L1_2(L2_2)
      if 1 < L1_2 then
        L2_2 = A0_2._tab_control
        L3_2 = L2_2
        L2_2 = L2_2.select_prev
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2.force_set_first_navigation_target
        L2_2(L3_2)
      end
    end
  end
end
L4_1._select_prev = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.item_count
      L1_2 = L1_2(L2_2)
      if 1 < L1_2 then
        L2_2 = A0_2._tab_control
        L3_2 = L2_2
        L2_2 = L2_2.select_next
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2.force_set_first_navigation_target
        L2_2(L3_2)
      end
    end
  end
end
L4_1._select_next = L5_1
function L5_1(A0_2, A1_2)
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
L4_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 ~= nil then
    L1_2 = A0_2._tab_control
    L1_2 = L1_2.current_select_item
    if L1_2 ~= nil then
      L1_2 = A0_2._tab_control
      L1_2 = L1_2.current_select_item
      L2_2 = L1_2
      L1_2 = L1_2.get_first_selected_object
      return L1_2(L2_2)
    end
  end
  L1_2 = nil
  return L1_2
end
L4_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_zoom
    L2_3 = NavigationZoneType
    L2_3 = L2_3.Zone1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2)
end
L4_1._init_ui_navigation = L5_1
return L4_1
