local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.TeamBuffDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.EnvBuffTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.EnvBuffTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.FoodBuffTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.FoodBuffTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.AvatarBuffTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.AvatarBuffTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TeamBuffDetailDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.env = 1
L1_1.food = 2
L1_1.avatar = 3
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._show_avatar = A1_2
  A0_2._init_avatar_id = A2_2
  A0_2._show_food = A3_2
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
  L3_2 = L3_2.TeamBuffDetailDialogBinder
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
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 then
    L2_2 = L1_2.get_first_selected_object
    if L2_2 then
      L3_2 = L1_2
      L2_2 = L1_2.get_first_selected_object
      return L2_2(L3_2)
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._show_avatar
  if L1_2 then
    L1_2 = A0_2._tab_control
    L2_2 = L1_2
    L1_2 = L1_2.click_item_by_uid
    L3_2 = L1_1.avatar
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._avatar_buff_tab_item
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._init_avatar_id
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._show_food
    if L1_2 then
      L1_2 = A0_2._tab_control
      L2_2 = L1_2
      L1_2 = L1_2.click_item_by_uid
      L3_2 = L1_1.food
      L1_2(L2_2, L3_2)
    else
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
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._tab_control
  L1_2 = L1_2.current_select_item
  if L1_2 then
    L2_2 = L1_2._on_exit_callback
    if L2_2 then
      L3_2 = L1_2
      L2_2 = L1_2._on_exit_callback
      L2_2(L3_2)
    end
  end
end
L0_1._invoke_exit = L2_1
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
  L1_2 = A0_2.set_exit_callback
  L3_2 = A0_2._invoke_exit
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
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
  L2_2 = A0_2
  L1_2 = A0_2._init_food_buff_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_buff_tab_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.short_cut_hint_panel = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.EnvBuffTabItem
  L4_2 = G
  L4_2 = L4_2.EnvBuffTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._env_buff_tab_item = L1_2
  L1_2 = A0_2._env_buff_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._env_buff_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_env_buff
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._env_buff_tab_item
  L1_2(L2_2, L3_2)
end
L0_1._init_env_buff_tab_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.FoodBuffTabItem
  L4_2 = G
  L4_2 = L4_2.FoodBuffTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._food_buff_tab_item = L1_2
  L1_2 = A0_2._food_buff_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._food_buff_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_food_buff
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._food_buff_tab_item
  L1_2(L2_2, L3_2)
end
L0_1._init_food_buff_tab_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarBuffTabItem
  L4_2 = G
  L4_2 = L4_2.AvatarBuffTabItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._avatar_buff_tab_item = L1_2
  L1_2 = A0_2._avatar_buff_tab_item
  L1_2.button_prefab_index = 0
  L1_2 = A0_2._avatar_buff_tab_item
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_avatar_buff
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.add_item
  L3_2 = A0_2._avatar_buff_tab_item
  L1_2(L2_2, L3_2)
end
L0_1._init_avatar_buff_tab_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_prev
  L1_2(L2_2)
end
L0_1._on_click_btn_left = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.select_next
  L1_2(L2_2)
end
L0_1._on_click_btn_right = L2_1
return L0_1
