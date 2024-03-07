local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueEntranceTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueEntranceInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
L2_1 = {}
L2_1.Dice = 1
L2_1.Aeon = 2
L3_1 = {}
L3_1[1] = "UIText_RogueDLC_AeonDice"
L3_1[2] = "UIText_RogueDLC_AeonBless"
L4_1 = {}
L4_1[1] = 1
L4_1[2] = 2
L4_1[3] = 3
L4_1[4] = 4
L4_1[5] = 5
L4_1[6] = 6
L4_1[7] = 7
L4_1[8] = 8
L5_1 = 2
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.left_btn
  L4_2 = A0_2._on_left_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.right_btn
  L4_2 = A0_2._on_right_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_panels
  L1_2(L2_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._data = A1_2
  A0_2._data_list = A2_2
  if A3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._reset_tab_control
    L4_2(L5_2)
  end
  L4_2 = A0_2._data
  L4_2 = L4_2.CanSelectedOnEntrance
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_normal_view
    L4_2(L5_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._setup_locked_view
    L4_2(L5_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.confirm_btn
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._data
  L6_2 = L6_2.CanSelectedOnEntrance
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._reset_scroll
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_detail_panel_root
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_detail_panel_root_b
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._init_setup_pane_b_view
  if L4_2 ~= nil then
    L4_2 = A0_2._init_setup_pane_b_view
    if L4_2 then
      goto lbl_43
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_panel_b_view
  L4_2(L5_2)
  A0_2._init_setup_pane_b_view = true
  ::lbl_43::
end
L0_1.setup_view = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._horizontal_btn_callback = A1_2
  A0_2._horizontal_btn_listener = A2_2
end
L0_1.register_left_right_btn_click_cbk = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2._get_selected_data
  L1_2 = L1_2(L2_2)
  A0_2._data = L1_2
  L1_2 = A0_2._data
  L1_2 = L1_2.CanSelectedOnEntrance
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_normal_view
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_locked_view
    L1_2(L2_2)
  end
end
L0_1.refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.format_entrance_aeon_display_data
  L2_2 = A0_2._data
  return L1_2(L2_2)
end
L0_1.get_buff_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1.ChessRogueData
  L1_2 = L1_2.DiceInfo
  L1_2 = L1_2.ChessRogueDiceData
  L1_2 = L1_2.ChessRogueAeonDiceDataDict
  L2_2 = A0_2._data
  L2_2 = L2_2.DiceID
  L1_2 = L1_2[L2_2]
  L2_2 = G
  L2_2 = L2_2.ChessRogueUtils
  L2_2 = L2_2.format_entrance_dice_display_data
  L3_2 = A0_2._data
  L4_2 = L1_2
  L5_2 = false
  return L2_2(L3_2, L4_2, L5_2)
end
L0_1.get_dice_data = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_ref
  return L1_2
end
L0_1.get_scroll_rect = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.AeonID
  return L1_2
end
L0_1.get_cur_aeon_id = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._aeon_panels = L1_2
  L1_2 = {}
  A0_2._aeon_panels_b = L1_2
  L1_2 = 1
  L2_2 = 8
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChessRogueEntranceAeonPanel
    L8_2 = G
    L8_2 = L8_2.ChessRogueEntranceAeonPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._aeon_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ChessRogueEntranceAeonPanel
    L9_2 = G
    L9_2 = L9_2.ChessRogueEntranceAeonPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._aeon_panels_b
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._init_panels = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_top_tab_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_dice_panel
  L1_2(L2_2)
end
L0_1._setup_locked_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_top_tab_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_items
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_set_guid_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_dice_panel
  L1_2(L2_2)
  L1_2 = A0_2._is_tab_inited
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_tab_btn_clicked
    L3_2 = A0_2._cur_index
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_normal_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_root_b
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.CanSelectedOnEntrance
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_top_tab_list_b
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.CanSelectedOnEntrance
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_detail_panel_b
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._select_detail
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_detail_panel_b
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._select_detail
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.CanSelectedOnEntrance
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.buff_detail_panel_b
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.dice_detail_panel_b
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_panel_b
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._data
  L3_2 = L3_2.CanSelectedOnEntrance
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.empty_panel_b
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_detail_panel_b
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L4_2 = A0_2
  L3_2 = A0_2.get_buff_data
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_detail_panel_b
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L4_2 = A0_2
  L3_2 = A0_2.get_dice_data
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn_b
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.CanSelectedOnEntrance
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_dice_panel_b
  L1_2(L2_2)
end
L0_1._setup_panel_b_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L3_2 = L3_2.tab_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control_b = L1_2
  L1_2 = A0_2._tab_control_b
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_root_b
  L1_2(L2_2, L3_2)
end
L0_1._init_tab_control = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._aeon_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.is_loaded
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.safe_set_active
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.AeonID
  L1_2 = L4_1[L1_2]
  A0_2._prefab_index = L1_2
  L1_2 = A0_2._aeon_panels
  L2_2 = A0_2._prefab_index
  L1_2 = L1_2[L2_2]
  L3_2 = L1_2
  L2_2 = L1_2.is_loaded
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = A0_2._binder
    L4_2 = L4_2.prefab_load_meta_btn_genre_dice_a
    L4_2 = L4_2.MultiPrefabList
    L5_2 = A0_2._prefab_index
    L5_2 = L5_2 - 1
    L4_2 = L4_2[L5_2]
    L5_2 = A0_2._binder
    L5_2 = L5_2.prefab_load_meta_btn_genre_dice_a
    L5_2 = L5_2.transform
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = L1_2
    L3_2 = L1_2.bind
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_dice_panel
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_dice_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._aeon_panels_b
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.is_loaded
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.safe_set_active
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.AeonID
  L1_2 = L4_1[L1_2]
  L2_2 = A0_2._aeon_panels_b
  L2_2 = L2_2[L1_2]
  A0_2._aeon_panel_b = L2_2
  L2_2 = A0_2._aeon_panel_b
  L3_2 = L2_2
  L2_2 = L2_2.is_loaded
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = A0_2._binder
    L4_2 = L4_2.prefab_load_meta_btn_genre_dice_b
    L4_2 = L4_2.MultiPrefabList
    L5_2 = L1_2 - 1
    L4_2 = L4_2[L5_2]
    L5_2 = A0_2._binder
    L5_2 = L5_2.prefab_load_meta_btn_genre_dice_b
    L5_2 = L5_2.transform
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2._aeon_panels_b
    L3_2 = L3_2[L1_2]
    L4_2 = L3_2
    L3_2 = L3_2.bind
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_dice_panel
  L4_2 = A0_2._aeon_panel_b
  L2_2(L3_2, L4_2)
end
L0_1._refresh_dice_panel_b = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.setup_view
  L4_2 = A0_2._data
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.refresh_animator_state
  L2_2(L3_2)
  L3_2 = A1_2
  L2_2 = A1_2.ban_btn
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.ban_btn
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._setup_dice_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._is_tab_inited
  if L1_2 then
    return
  end
  A0_2._is_tab_inited = true
  A0_2._cur_index = 1
  L1_2 = 1
  L2_2 = L5_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChessRogueEntranceTabItem
    L8_2 = G
    L8_2 = L8_2.ChessRogueEntranceTabItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = L3_1[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._tab_control
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_select_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_tab_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._cur_index
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = L5_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChessRogueEntranceTabItem
    L8_2 = G
    L8_2 = L8_2.ChessRogueEntranceTabItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = L3_1[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._tab_control_b
    L7_2 = L6_2
    L6_2 = L6_2.add_item
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._tab_control_b
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control_b
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._cur_index
  L1_2(L2_2, L3_2)
end
L0_1._setup_tab_items = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.is_in_guide
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._try_set_guid_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_ref
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._reset_scroll = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_tab_inited
  if not L1_2 then
    return
  end
  L1_2 = A0_2._cur_index
  if L1_2 == 1 then
    L2_2 = A0_2
    L1_2 = A0_2._on_tab_btn_clicked
    L3_2 = 1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.click_item_by_uid
    L3_2 = 1
    L1_2(L2_2, L3_2)
  end
end
L0_1._reset_tab_control = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = "DiceEnterGenrePage_GenreDetail_SwitchL"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_panel_b_view
  L1_2(L2_2)
  L1_2 = A0_2._aeon_panel_b
  L2_2 = L1_2
  L1_2 = L1_2.refresh_animator_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_with_offset
  L3_2 = -1
  L1_2(L2_2, L3_2)
end
L0_1._on_left_btn_clicked = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = "DiceEnterGenrePage_GenreDetail_SwitchR"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_panel_b_view
  L1_2(L2_2)
  L1_2 = A0_2._aeon_panel_b
  L2_2 = L1_2
  L1_2 = L1_2.refresh_animator_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_with_offset
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_right_btn_clicked = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2._prefab_index
  L2_2 = L2_2 + A1_2
  if L2_2 == 0 then
    L3_2 = L4_1
    L2_2 = #L3_2
  else
    L3_2 = L4_1
    L3_2 = #L3_2
    if L2_2 > L3_2 then
      L2_2 = 1
    end
  end
  L3_2 = nil
  L4_2 = ipairs
  L5_2 = L4_1
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 == L2_2 then
      L3_2 = L7_2
    end
  end
  if L3_2 == nil then
    return
  end
  L4_2 = 0
  L5_2 = A0_2._data_list
  L5_2 = L5_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._data_list
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2.AeonID
    if L9_2 == L3_2 then
      L10_2 = A0_2
      L9_2 = A0_2.setup_view
      L11_2 = L8_2
      L12_2 = A0_2._data_list
      L13_2 = false
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._on_tab_btn_clicked
  L6_2 = A0_2._cur_index
  L4_2(L5_2, L6_2)
end
L0_1._refresh_with_offset = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.get_rogue_area
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.get_selected_avatar_base_ids
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._data
  L3_2 = L3_2.AeonID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_NetworkManager
  L5_2 = L4_2
  L4_2 = L4_2.OGLMKMMMMLN
  L6_2 = L1_2
  L7_2 = L3_2
  L8_2 = L2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._on_confirm_btn_clicked = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._data
  L2_2 = L2_2.CanSelectedOnEntrance
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.dice_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.buff_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  A0_2._cur_index = A1_2
  L2_2 = L2_1.Aeon
  if A1_2 == L2_2 then
    A0_2._cur_index = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.dice_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.buff_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.buff_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L5_2 = A0_2
    L4_2 = A0_2.get_buff_data
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.buff_detail_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    A0_2._select_detail = true
  else
    A0_2._cur_index = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.buff_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.dice_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.dice_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L5_2 = A0_2
    L4_2 = A0_2.get_dice_data
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._binder
    L4_2 = L4_2.dice_detail_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    A0_2._select_detail = false
  end
  L3_2 = A0_2
  L2_2 = A0_2._reset_scroll
  L2_2(L3_2)
  L2_2 = A0_2._tab_control_b
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_tab_btn_clicked = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_tab_btn_clicked
  L3_2 = A0_2._cur_index
  L1_2(L2_2, L3_2)
end
L0_1._refresh_tab_panel = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._owner
    L3_2 = L2_2
    L2_2 = L2_2.is_in_sub_panel
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftTrigger
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = A0_2._tab_control
    L3_2 = L2_2
    L2_2 = L2_2.select_prev
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.RightTrigger
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      L2_2 = A0_2._tab_control
      L3_2 = L2_2
      L2_2 = L2_2.select_next
      L2_2(L3_2)
    end
  end
end
L0_1._on_in_control_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_index
  L2_2 = L2_1.Aeon
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.buff_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.dice_detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
end
L0_1.get_first_selected_object = L6_1
return L0_1
