local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubBuffDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubEnvBuffTabItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubBuffDetailDialog"
L2_1 = G
L2_1 = L2_1.TeamBuffDetailDialog
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.env = 1
L1_1.food = 2
L1_1.avatar = 3
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._show_avatar = A1_2
  A0_2._init_index = A2_2
  A0_2._level_instance = A3_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._init_avatar_id = nil
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BoxingClubBuffDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
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
    L7_2 = L6_2.is_show_buff
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = A0_2._tab_control
      L8_2 = L7_2
      L7_2 = L7_2.click_item_by_uid
      L9_2 = L5_2
      L7_2(L8_2, L9_2)
      break
    end
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = L1_1.env
  L2_2(L3_2, L4_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left
  L4_2 = A0_2._on_click_btn_left
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right
  L4_2 = A0_2._on_click_btn_right
  L1_2(L2_2, L3_2, L4_2)
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
  L2_2 = A0_2
  L1_2 = A0_2._init_env_buff_tab_item
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Horizontal
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._switch_in_control_input_hint_status
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._switch_in_control_input_hint_status
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BoxingClubEnvBuffTabItem
  L4_2 = G
  L4_2 = L4_2.EnvBuffTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._env_buff_tab_item = L1_2
  L1_2 = A0_2._env_buff_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_instance
  L3_2 = A0_2._level_instance
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._env_buff_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._env_buff_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_env_buff
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._env_buff_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_title
  L3_2 = "UIText_BoxingClub_Challenge_BuffTitle"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._env_buff_tab_item
  L1_2(L2_2, L3_2)
end
L0_1._init_env_buff_tab_item = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_left
  L2_2 = L2_2.transform
  L2_2 = L2_2.parent
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_right
  L2_2 = L2_2.transform
  L2_2 = L2_2.parent
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._switch_in_control_input_hint_status = L2_1
return L0_1
