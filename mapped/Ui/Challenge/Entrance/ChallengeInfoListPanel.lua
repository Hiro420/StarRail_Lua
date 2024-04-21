local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.ChallengeInfoRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.ChallengeInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeInfoListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L0_1._panel_offset_x = 0
L0_1._panel_offset_y = 0
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.ChallengeSelectUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._challenge_select_ui3d = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ChallengeDataUpdated
  L4_2 = L0_1._on_challenge_data_update
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._click_callback_handler = nil
  A0_2._click_callback_listener = nil
  A0_2._panels = nil
  A0_2._locked_panels = nil
  A0_2._normal_panels = nil
  A0_2._challenge_table = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_challenge_panel
  if L1_2 then
    L1_2 = A0_2._cur_challenge_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_button
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.gameObject
    return L1_2
  end
  L1_2 = A0_2._panels
  L1_2 = L1_2[1]
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.get_button
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._challenge_select_ui3d
  if L1_2 then
    L1_2 = A0_2._challenge_select_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.unselect_crystal
    L1_2(L2_2)
  end
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_select_ui3d
  if L1_2 then
    L1_2 = A0_2._cur_challenge_panel
    if L1_2 then
      L1_2 = A0_2._challenge_select_ui3d
      L2_2 = L1_2
      L1_2 = L1_2.select_crystal_by_index
      L3_2 = A0_2._cur_challenge_panel
      L4_2 = L3_2
      L3_2 = L3_2.get_index
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_select_ui3d
  if L1_2 then
    L1_2 = A0_2._cur_challenge_panel
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.is_gamepad_input
      L1_2 = L1_2()
      if L1_2 then
        L1_2 = A0_2._challenge_select_ui3d
        L2_2 = L1_2
        L1_2 = L1_2.select_crystal_by_index
        L3_2 = A0_2._cur_challenge_panel
        L4_2 = L3_2
        L3_2 = L3_2.get_index
        L3_2, L4_2 = L3_2(L4_2)
        L1_2(L2_2, L3_2, L4_2)
      else
        L1_2 = A0_2._challenge_select_ui3d
        L2_2 = L1_2
        L1_2 = L1_2.enter_crystal_by_index
        L3_2 = A0_2._cur_challenge_panel
        L4_2 = L3_2
        L3_2 = L3_2.get_index
        L3_2, L4_2 = L3_2(L4_2)
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  end
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback_handler = A1_2
  A0_2._click_callback_listener = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  A0_2._challenge_table = A1_2
  A0_2._cur_challenge = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._prepare_challenge_panels
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._panels
    L8_2 = L8_2[L6_2]
    L10_2 = L8_2
    L9_2 = L8_2.setup_view
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.bind_click
    L11_2 = A0_2
    L12_2 = A0_2._on_challenge_info_row_click
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = L8_2
    L9_2 = L8_2.register_enter_exit_callback
    L11_2 = A0_2._on_enter_or_exit_panel
    L12_2 = A0_2
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = L8_2
    L9_2 = L8_2.register_press_callback
    L11_2 = A0_2._on_press_panel
    L12_2 = A0_2
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = L8_2
    L9_2 = L8_2.register_select_callback
    L11_2 = A0_2._on_select_panel
    L12_2 = A0_2
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = L8_2
    L9_2 = L8_2.set_index
    L11_2 = L6_2
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._challenge_select_ui3d
    L10_2 = L9_2
    L9_2 = L9_2.set_crystal_active_by_index
    L11_2 = L6_2
    L13_2 = L7_2
    L12_2 = L7_2.GetIsOpen
    L12_2 = L12_2(L13_2)
    L13_2 = true
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._move_to_cur_challenge_internal
  L1_2(L2_2)
end
L0_1.move_to_cur_challenge = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2._panels
  if L2_2 == nil then
    L2_2 = {}
    A0_2._panels = L2_2
  end
  L2_2 = #A1_2
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.GetIsOpen
    L8_2 = L8_2(L9_2)
    L9_2 = A0_2._panels
    L11_2 = A0_2
    L10_2 = A0_2._get_panel
    L12_2 = L6_2
    L13_2 = not L8_2
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L9_2[L6_2] = L10_2
    L10_2 = A0_2
    L9_2 = A0_2._try_set_panel_active
    L11_2 = L6_2
    L12_2 = false
    L13_2 = L8_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L10_2 = A0_2
    L9_2 = A0_2._try_set_panel_active
    L11_2 = L6_2
    L12_2 = true
    L13_2 = not L8_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  L3_2 = L2_2 + 1
  L4_2 = A0_2._panels
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = A0_2
    L7_2 = A0_2._try_set_panel_active
    L9_2 = L6_2
    L10_2 = false
    L11_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L8_2 = A0_2
    L7_2 = A0_2._try_set_panel_active
    L9_2 = L6_2
    L10_2 = true
    L11_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoLuaCallbackTick
  L3_2 = L3_2.Get
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.gameObject
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.SetLuaCallback
  L6_2 = A0_2._tick_for_ui3d
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._build_navigation
  L4_2(L5_2)
end
L0_1._prepare_challenge_panels = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2._panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L10_2 = L6_2
    L9_2 = L6_2.get_button
    L9_2, L10_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Horizontal
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._build_navigation = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 then
    L3_2 = A0_2._locked_panels
    if L3_2 == nil then
      L3_2 = {}
      A0_2._locked_panels = L3_2
    end
    L3_2 = A0_2._locked_panels
    L3_2 = L3_2[A1_2]
    if L3_2 == nil then
      L5_2 = A0_2
      L4_2 = A0_2._create_challenge_panel
      L6_2 = false
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L4_2
      L4_2 = A0_2._locked_panels
      L4_2[A1_2] = L3_2
    end
    return L3_2
  end
  L3_2 = A0_2._normal_panels
  if L3_2 == nil then
    L3_2 = {}
    A0_2._normal_panels = L3_2
  end
  L3_2 = A0_2._normal_panels
  L3_2 = L3_2[A1_2]
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2._create_challenge_panel
    L6_2 = true
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
    L4_2 = A0_2._normal_panels
    L4_2[A1_2] = L3_2
  end
  return L3_2
end
L0_1._get_panel = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if A2_2 then
    L4_2 = A0_2._locked_panels
    if L4_2 then
      L4_2 = A0_2._locked_panels
      L4_2 = L4_2[A1_2]
      if L4_2 then
        L4_2 = A0_2._locked_panels
        L4_2 = L4_2[A1_2]
        L5_2 = L4_2
        L4_2 = L4_2.safe_set_active
        L6_2 = A3_2
        L4_2(L5_2, L6_2)
      end
    end
    return
  end
  L4_2 = A0_2._normal_panels
  if L4_2 then
    L4_2 = A0_2._normal_panels
    L4_2 = L4_2[A1_2]
    if L4_2 then
      L4_2 = A0_2._normal_panels
      L4_2 = L4_2[A1_2]
      L5_2 = L4_2
      L4_2 = L4_2.safe_set_active
      L6_2 = A3_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._try_set_panel_active = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.prefab_challenge
  L2_2 = L2_2.MultiPrefabList
  L2_2 = L2_2[0]
  if not A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.prefab_challenge
    L3_2 = L3_2.MultiPrefabList
    L2_2 = L3_2[1]
  end
  L4_2 = A0_2
  L3_2 = A0_2.instantiate_object
  L5_2 = L2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.prefab_challenge
  L6_2 = L6_2.transform
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.ChallengeInfoRowPanel
  L7_2 = G
  L7_2 = L7_2.ChallengeInfoRowPanelBinder
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.init_for_ui3d
  L5_2(L6_2)
  return L4_2
end
L0_1._create_challenge_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._tick_challenge_panel_pos
  L1_2(L2_2)
end
L0_1._tick_for_ui3d = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._challenge_table
  if L1_2 == nil then
    return
  end
  L1_2 = 1
  L2_2 = A0_2._challenge_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._panels
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L5_2 = A0_2._panels
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.is_active
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = A0_2._challenge_select_ui3d
        L6_2 = L5_2
        L5_2 = L5_2.get_crystal_anchor_by_index
        L7_2 = L4_2
        L5_2 = L5_2(L6_2, L7_2)
        if L5_2 ~= nil then
          L6_2 = CS
          L6_2 = L6_2.RPG
          L6_2 = L6_2.Client
          L6_2 = L6_2.GlobalVars
          L6_2 = L6_2.s_UI3DCamera
          L7_2 = L6_2
          L6_2 = L6_2.WorldToScreenPoint
          L8_2 = L5_2.position
          L6_2 = L6_2(L7_2, L8_2)
          L7_2 = CS
          L7_2 = L7_2.UnityEngine
          L7_2 = L7_2.Vector2
          L8_2 = L6_2.x
          L9_2 = L0_1._panel_offset_x
          L8_2 = L8_2 + L9_2
          L9_2 = L6_2.y
          L10_2 = L0_1._panel_offset_y
          L9_2 = L9_2 + L10_2
          L7_2 = L7_2(L8_2, L9_2)
          L8_2 = CS
          L8_2 = L8_2.UnityEngine
          L8_2 = L8_2.RectTransformUtility
          L8_2 = L8_2.ScreenPointToLocalPointInRectangle
          L9_2 = A0_2._binder
          L9_2 = L9_2.node_challenge_container
          L10_2 = L7_2
          L11_2 = CS
          L11_2 = L11_2.RPG
          L11_2 = L11_2.Client
          L11_2 = L11_2.GlobalVars
          L11_2 = L11_2.s_UICamera
          L12_2 = nil
          L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
          if L8_2 then
            L10_2 = A0_2._panels
            L10_2 = L10_2[L4_2]
            L11_2 = L10_2
            L10_2 = L10_2.set_screen_space_position
            L12_2 = L9_2
            L10_2(L11_2, L12_2)
          end
        end
      end
    end
  end
end
L0_1._tick_challenge_panel_pos = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._click_callback_handler
  if L3_2 then
    L3_2 = A0_2._click_callback_handler
    L4_2 = A0_2._click_callback_listener
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2._challenge_select_ui3d
  L4_2 = L3_2
  L3_2 = L3_2.unselect_crystal
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._change_cur_data_panel
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A1_2
  L3_2 = A1_2.GetIsOpen
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._show_challenge_detail
    L3_2(L4_2)
  else
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "ChallengeMaze_Toast_4"
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_challenge_info_row_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L3_2 = A0_2._challenge_select_ui3d
    L4_2 = L3_2
    L3_2 = L3_2.enter_crystal_by_index
    L6_2 = A2_2
    L5_2 = A2_2.get_index
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2._challenge_select_ui3d
    L4_2 = L3_2
    L3_2 = L3_2.unselect_crystal
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.save_navigation_target
  L6_2 = A2_2
  L5_2 = A2_2.get_button
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.gameObject
  L3_2(L4_2, L5_2)
end
L0_1._on_enter_or_exit_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._challenge_select_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.press_crystal_by_index
  L5_2 = A1_2
  L4_2 = A1_2.get_index
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_press_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = A0_2._challenge_select_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.select_crystal_by_index
    L5_2 = A1_2
    L4_2 = A1_2.get_index
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L5_2 = A1_2
  L4_2 = A1_2.get_button
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.gameObject
  L2_2(L3_2, L4_2)
end
L0_1._on_select_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._cur_challenge = A1_2
  A0_2._cur_challenge_panel = A2_2
end
L0_1._change_cur_data_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_challenge
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Challenge.Entrance.ChallengeDetailPage"
    L3_2 = A0_2._cur_challenge
    L3_2 = L3_2.ID
    L5_2 = A0_2
    L4_2 = A0_2._get_cur_challenge_index
    L4_2, L5_2 = L4_2(L5_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1._show_challenge_detail = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._challenge_select_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.show_world_map_camera
  L1_2(L2_2)
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_challenge_index
  L3_2 = A0_2._cur_challenge
  return L1_2(L2_2, L3_2)
end
L0_1._get_cur_challenge_index = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._challenge_table
  if L2_2 ~= nil then
    L2_2 = pairs
    L3_2 = A0_2._challenge_table
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      if A1_2 then
        L7_2 = L6_2.ID
        L8_2 = A1_2.ID
        if L7_2 == L8_2 then
          return L5_2
        end
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_challenge_index = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_challenge
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_cur_challenge_index
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = A0_2._challenge_select_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.move_to_cur_challenge
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = G
      L2_2 = L2_2.Utils
      L2_2 = L2_2.is_gamepad_input
      L2_2 = L2_2()
      if L2_2 then
        L2_2 = A0_2._challenge_select_ui3d
        L3_2 = L2_2
        L2_2 = L2_2.select_crystal_by_index
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
      else
        L2_2 = A0_2._challenge_select_ui3d
        L3_2 = L2_2
        L2_2 = L2_2.enter_crystal_by_index
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
      end
      L2_2 = A0_2._panels
      L2_2 = L2_2[L1_2]
      if L2_2 then
        A0_2._cur_challenge_panel = L2_2
        L4_2 = A0_2
        L3_2 = A0_2.save_navigation_target
        L6_2 = L2_2
        L5_2 = L2_2.get_button
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2.gameObject
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._move_to_cur_challenge_internal = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_challenge
  if L1_2 then
    L1_2 = A0_2._cur_challenge
    L1_2 = L1_2.IsFirstOpen
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._get_cur_challenge_index
      L1_2 = L1_2(L2_2)
      if L1_2 ~= nil then
        L2_2 = A0_2._challenge_select_ui3d
        L3_2 = L2_2
        L2_2 = L2_2.unlock_crystal_by_index
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
      end
      L2_2 = A0_2._cur_challenge
      L2_2.IsFirstOpen = false
    end
  end
end
L0_1.try_show_challenge_unlock = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = A1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._challenge_select_ui3d
    L7_2 = L6_2
    L6_2 = L6_2.auto_unlock_crystal_by_index
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._challenge_select_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.unlock_crystal_by_index
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._cur_challenge
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._get_cur_challenge_index
    L2_2 = L2_2(L3_2)
    if L2_2 == A1_2 then
      L2_2 = A0_2._cur_challenge
      L2_2.IsFirstOpen = false
    end
  end
end
L0_1.try_show_auto_unlock_by_index = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = pairs
  L5_2 = A0_2._normal_panels
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L7_2 == A1_2 then
      L10_2 = L3_2
      L9_2 = L3_2.SetNodeDynamicKey
      L11_2 = L8_2._binder
      L11_2 = L11_2.root
      L11_2 = L11_2.gameObject
      L12_2 = A2_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
L0_1.try_set_tutorial_node = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._challenge_group_data
  if L2_2 ~= nil and A1_2 ~= nil then
    L2_2 = A0_2._challenge_group_data
    L3_2 = L2_2
    L2_2 = L2_2.GetChallengeIndex
    L4_2 = A1_2.ID
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= -1 then
      L3_2 = A0_2._panels
      L4_2 = L2_2 + 1
      L3_2 = L3_2[L4_2]
      if L3_2 then
        L5_2 = L3_2
        L4_2 = L3_2.setup_view
        L6_2 = A1_2
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L0_1._on_challenge_data_update = L1_1
return L0_1
