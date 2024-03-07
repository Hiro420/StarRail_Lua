local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.RogueEnhanceBuffPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueEnhanceBuffTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueEnhanceBuffTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueEnhanceBuffRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Buff.Panels.RogueEnhanceBuffRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.RogueEndlessUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RogueModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueEnhanceBuffPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L3_2.RogueEnhanceBuffPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._all_rogue_buff_data_table = L1_2
  L1_2 = {}
  A0_2._display_rogue_buff_data_table = L1_2
  A0_2._selectedIndex = 0
  L1_2 = {}
  A0_2._buff_shop_enhanced = L1_2
  A0_2._cur_select_buff_panel = nil
  A0_2._tab_control = nil
  A0_2._default_tab_index = 1
  L2_2 = A0_2
  L1_2 = A0_2.set_exit_callback
  L3_2 = A0_2._set_last_page_transition_cut
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = L1_1._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_left
  L4_2 = L1_1._select_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_select_right
  L4_2 = L1_1._select_next
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroller_buff
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_buff_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.prefab_load_res_bar
  L3_2 = "RogueEnhanceBuffPage"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.HMABDNJBOKO
  L4_2 = A0_2._on_get_enhance_buff_info
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshRogueBuffEnhance
  L4_2 = L1_1._on_refresh_enhance
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnRogueBuffEnhanceRsp
  L4_2 = L1_1._on_enhance_result
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshRogueCoin
  L4_2 = L1_1._on_refresh_enhance
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._add_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tab_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_buff
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_enhance_count_limited
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_buff
    L2_2 = L1_2
    L1_2 = L1_2.replace_click_callback
    L3_2 = A0_2._send_shop_enhance
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._fetch_shop_enhanced_info
    L1_2(L2_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.GetCurModeRogueBuffInfo
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = L1_2.SendPacketCmd
    if L2_2 ~= nil then
      L2_2 = L1_2.SendPacketCmd
      L3_2 = L2_2
      L2_2 = L2_2.SendGetRogueBuffEnhanceInfoScReq
      L2_2(L3_2)
    end
  end
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.IsInRogueEndlessMode
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RogueEndlessUtils
    L1_2 = L1_2.has_mega_buff
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.GetCurrentAreaID
    L2_2, L3_2 = L2_2(L3_2)
    L1_2 = L1_2(L2_2, L3_2)
  end
  return L1_2
end
L1_1._is_enhance_count_limited = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_DialogueManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurTalkEntityServerEntityID
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.OOGONDGGKMI
  L3_2 = L2_2
  L2_2 = L2_2.EJMIBHHCHML
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L1_1._fetch_shop_enhanced_info = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_DialogueManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurTalkEntityServerEntityID
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.NetworkManager
  L3_2 = L3_2.OOGONDGGKMI
  L4_2 = L3_2
  L3_2 = L3_2.BNEIDEIDCNI
  L5_2 = L2_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._send_shop_enhance = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "GetEnhanceCommonRogueBuffInfoScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.EnhancedBuffIdList
  L4_2 = {}
  A0_2._buff_shop_enhanced = L4_2
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2._buff_shop_enhanced
    L9_2[L8_2] = true
  end
end
L1_1._on_get_enhance_buff_info = L2_1
function L2_1(A0_2, A1_2)
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
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._binder
      L4_2 = L4_2.panel_buff
      L5_2 = L4_2
      L4_2 = L4_2.get_navigation_target
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroller_buff
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  A0_2._cur_select_buff_panel = L2_2
  L2_2 = A0_2._cur_select_buff_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_selected
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cur_select_buff_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_buff
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2 ~= nil
    return L3_2
  end
end
L1_1._is_can_to_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._on_enter_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1._on_leave_special_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 == nil then
    return
  end
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
      L1_2 = L1_2.select_prev
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L1_1._select_prev = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  if L1_2 == nil then
    return
  end
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
      L1_2 = L1_2.select_next
      L1_2(L2_2)
      L2_2 = A0_2
      L1_2 = A0_2.force_set_first_navigation_target
      L1_2(L2_2)
    end
  end
end
L1_1._select_next = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._tab_control
  if L1_2 ~= nil then
    return
  end
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
  L3_2 = L3_2.node_tab_control
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_select_change
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueBuffTypeExcelTable
  L1_2 = L1_2.dataDict
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L2_2 = L2_2.Value
    L4_2 = A0_2
    L3_2 = A0_2._init_rogue_buff_type_tab_item
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.update_layout
  L2_2(L3_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = A0_2._default_tab_index
  L2_2(L3_2, L4_2)
end
L1_1._try_init_tab_control = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.RogueEnhanceBuffTabItem
  L5_2 = G
  L5_2 = L5_2.RogueEnhanceBuffTabItemBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2.button_prefab_index = 0
  L4_2 = L2_2
  L3_2 = L2_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_item_list_content
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_tab_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._tab_control
  L4_2 = L3_2
  L3_2 = L3_2.add_item
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1._init_rogue_buff_type_tab_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L4_2 = L2_2
  L3_2 = L2_2.filter
  L5_2 = A0_2._all_rogue_buff_data_table
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._display_rogue_buff_data_table = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_scroller
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_right_panel
  L3_2(L4_2)
end
L1_1._on_tab_select_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._all_rogue_buff_data_table = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.GetCurModeRogueBuffInfo
  L1_2 = L1_2()
  L3_2 = L1_2
  L2_2 = L1_2.GetAchivedBuffList
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L9_2 = L7_2
    L8_2 = L7_2.GetRogueAeonID
    L8_2 = L8_2(L9_2)
    if L8_2 == 0 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._all_rogue_buff_data_table
      L10_2 = A0_2._all_rogue_buff_data_table
      L10_2 = #L10_2
      L10_2 = L10_2 + 1
      L11_2 = L7_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L1_1._refresh_all_buff = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.item_count
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.find_item
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.refresh_num
    L9_2 = A0_2._all_rogue_buff_data_table
    L7_2(L8_2, L9_2)
  end
end
L1_1._refresh_tab_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._sort_display_buff
  L1_2(L2_2)
  A0_2._selectedIndex = 0
  L1_2 = A0_2._display_rogue_buff_data_table
  L1_2 = #L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroller_buff
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroller_buff
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._tab_control
  L2_2 = L2_2.current_select_item
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_empty
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2 == 0
  L3_2(L4_2, L5_2)
  if L1_2 == 0 then
    L4_2 = L2_2
    L3_2 = L2_2.setup_empty_tip
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_empty_tip
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_tab_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L6_2 = L2_2
  L5_2 = L2_2.get_tab_title_text_id
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_tab_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L1_1._refresh_scroller = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._display_rogue_buff_data_table
  if L1_2 ~= nil then
    L1_2 = A0_2._display_rogue_buff_data_table
    L1_2 = #L1_2
    if L1_2 ~= 0 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._display_rogue_buff_data_table
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A0_3
    L2_3 = A0_3.GetRogueBuffRarity
    L2_3 = L2_3(L3_3)
    L4_3 = A1_3
    L3_3 = A1_3.GetRogueBuffRarity
    L3_3 = L3_3(L4_3)
    if L2_3 ~= L3_3 then
      L4_3 = L2_3 > L3_3
      return L4_3
    end
    L5_3 = A0_3
    L4_3 = A0_3.GetRogueBuffType
    L4_3 = L4_3(L5_3)
    L6_3 = A1_3
    L5_3 = A1_3.GetRogueBuffType
    L5_3 = L5_3(L6_3)
    if L4_3 ~= L5_3 then
      L6_3 = L4_3 < L5_3
      return L6_3
    end
    L6_3 = A0_3.BuffID
    L7_3 = A1_3.BuffID
    L6_3 = L6_3 < L7_3
    return L6_3
  end
  L1_2(L2_2, L3_2)
end
L1_1._sort_display_buff = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.RogueEnhanceBuffRowPanel
    L8_2 = G
    L8_2 = L8_2.RogueEnhanceBuffRowPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._display_rogue_buff_data_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_buff_row_click
  L10_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L4_2
  L6_2 = L4_2.disable_enhance
  L8_2 = A0_2._buff_shop_enhanced
  L9_2 = L5_2.BuffID
  L8_2 = L8_2[L9_2]
  L8_2 = L8_2 == true
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._selectedIndex
  L9_2 = L9_2 == A2_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L1_1._on_buff_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._selectedIndex = A1_2
  L3_2 = A0_2._cur_select_buff_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._cur_select_buff_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_selected
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2._cur_select_buff_panel = A2_2
  L3_2 = A0_2._cur_select_buff_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_right_panel
  L3_2(L4_2)
end
L1_1._on_buff_row_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L2_2 = A0_2._selectedIndex
  if L2_2 ~= nil then
    L2_2 = A0_2._display_rogue_buff_data_table
    L3_2 = A0_2._selectedIndex
    L3_2 = L3_2 + 1
    L1_2 = L2_2[L3_2]
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_buff
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_buff
    L3_2 = L2_2
    L2_2 = L2_2.disable_enhance
    L4_2 = A0_2._buff_shop_enhanced
    L5_2 = L1_2.BuffID
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2 == true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_buff
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = L1_2 ~= nil
  L4_2 = A0_2
  L3_2 = A0_2._refresh_short_cut_hint
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1._refresh_right_panel = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 114
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 33
    L2_2(L3_2, L4_2)
  end
end
L1_1._refresh_short_cut_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_all_buff
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_init_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_tab_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L1_1._on_refresh_enhance = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._buff_shop_enhanced
  L3_2 = A1_2.BuffID
  L2_2[L3_2] = true
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroller_buff
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_right_panel
  L2_2(L3_2)
end
L1_1._on_enhance_result = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.NextPage
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.ImportCsToLua
    L2_2 = L2_2.TransitionStyle_Cut
    L1_2.Transition = L2_2
  end
end
L1_1._set_last_page_transition_cut = L2_1
return L1_1
