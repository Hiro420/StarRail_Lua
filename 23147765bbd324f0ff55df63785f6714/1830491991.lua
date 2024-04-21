local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Maze.Wheel.ShortCutMidWheelPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.Wheel.ShortCutWheelItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.Wheel.ShortCutWheelItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ShortCutMidWheelPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0
L2_1 = 0
L3_1 = 100
L4_1 = 0.5
L5_1 = 8
L6_1 = 4
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._row_data_list = L1_2
  L1_2 = {}
  A0_2._item_panel_list = L1_2
  A0_2._current_selected = 0
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.WheelItemType
  L1_2 = L1_2.None
  L1_2 = #L1_2
  A0_2._current_selected_type = L1_2
  A0_2._current_data = nil
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.IsUseEightWheel
  if L1_2 then
    L1_2 = L5_1
    A0_2._wheel_short_cut_count = L1_2
  else
    L1_2 = L6_1
    A0_2._wheel_short_cut_count = L1_2
  end
  L1_2 = tonumber
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "%.2f"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.UIScaleFactor
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ui_scale_factor = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InControlActionsManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.TutorialGuideWheelItem
  L1_2 = #L1_2
  A0_2._tutorial_guide_wheel_item = L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UICloseShortCutWheelDialog
  L4_2 = A0_2._on_close_short_cut_wheel_dialog
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_controller_Info
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_mouse_Info
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_controller_Info
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_mouse_Info
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_row_data_list
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = A0_2._wheel_short_cut_count
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._row_data_list
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._binder
    L6_2 = L6_2._wheel_short_cut_item_list
    L6_2 = L6_2[L4_2]
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.ShortCutWheelItem
    L10_2 = G
    L10_2 = L10_2.ShortCutWheelItemBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.bind
    L10_2 = L6_2.transform
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.setup_view
    L10_2 = L5_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._item_panel_list
    L8_2[L4_2] = L7_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "FuncName_Default"
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Screen
  L1_2 = L1_2.width
  L1_2 = L1_2 / 2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Screen
  L2_2 = L2_2.height
  L2_2 = L2_2 / 2
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L3_2 = L3_2.localPosition
  L3_2 = L3_2.x
  L4_2 = A0_2.ui_scale_factor
  L3_2 = L3_2 * L4_2
  L1_2 = L1_2 + L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L3_2 = L3_2.localPosition
  L3_2 = L3_2.y
  L4_2 = A0_2.ui_scale_factor
  L3_2 = L3_2 * L4_2
  L2_2 = L2_2 + L3_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = L1_2
  L5_2 = L2_2
  L6_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2.default_mouse_position = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_wheel_pointer
  L3_2 = L3_2.transform
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Quaternion
  L4_2 = L4_2.Euler
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2.rotation = L4_2
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = {}
  A0_2._row_data_list = L2_2
  L2_2 = 1
  L3_2 = A0_2._wheel_short_cut_count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._get_setting_index_by_order
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if 0 < L6_2 then
      L1_2[L6_2] = true
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.WheelSelectConfigExcelTable
      L7_2 = L7_2.GetData
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = A0_2._row_data_list
      L8_2[L5_2] = L7_2
    else
      L7_2 = A0_2._row_data_list
      L7_2[L5_2] = nil
    end
  end
  L2_2 = A0_2._tutorial_guide_wheel_item
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.WheelItemType
  L3_2 = L3_2.None
  L3_2 = #L3_2
  if L2_2 ~= L3_2 then
    L2_2 = A0_2._tutorial_guide_wheel_item
    L2_2 = L1_2[L2_2]
    if L2_2 == nil then
      L3_2 = A0_2
      L2_2 = A0_2._get_setting_default_order_by_index
      L4_2 = A0_2._tutorial_guide_wheel_item
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.WheelSelectConfigExcelTable
      L3_2 = L3_2.GetData
      L4_2 = A0_2._tutorial_guide_wheel_item
      L3_2 = L3_2(L4_2)
      L4_2 = A0_2._row_data_list
      L4_2[L2_2] = L3_2
    end
  end
end
L0_1._init_row_data_list = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftBumper
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_bumper_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_click = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.RightStickUp
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_right_stick_up
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.RightStickDown
    L3_2 = #L3_2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_right_stick_down
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.RightStickLeft
      L3_2 = #L3_2
      if A1_2 == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._on_right_stick_left
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.RightStickRight
        L3_2 = #L3_2
        if A1_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._on_right_stick_right
          L5_2 = A2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._on_in_control_press = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.exit
  L1_2(L2_2)
end
L0_1._on_left_bumper_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._current_selected
  if L1_2 then
    L1_2 = A0_2._current_selected
    if 0 < L1_2 then
      L1_2 = A0_2._item_panel_list
      L2_2 = A0_2._current_selected
      L1_2 = L1_2[L2_2]
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._get_goto_id
        L3_2 = A0_2._row_data_list
        L4_2 = A0_2._current_selected
        L3_2 = L3_2[L4_2]
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 then
          L2_2 = A0_2._tutorial_guide_wheel_item
          if L2_2 == 0 then
            L2_2 = G
            L2_2 = L2_2.GotoManager
            L2_2 = L2_2.Goto
            L3_2 = L1_2
            L4_2 = nil
            L5_2 = true
            L2_2(L3_2, L4_2, L5_2)
          else
            L2_2 = A0_2._tutorial_guide_wheel_item
            L3_2 = A0_2._current_selected_type
            if L2_2 == L3_2 then
              L2_2 = G
              L2_2 = L2_2.GotoManager
              L2_2 = L2_2.Goto
              L3_2 = L1_2
              L4_2 = nil
              L5_2 = true
              L2_2(L3_2, L4_2, L5_2)
            else
              L2_2 = G
              L2_2 = L2_2.NotifyManager
              L2_2 = L2_2.notify
              L3_2 = G
              L3_2 = L3_2.CS
              L3_2 = L3_2.NotifyType
              L3_2 = L3_2.UIPileToastMessageTextID
              L4_2 = "TutorialGuideWheelItem_Hint"
              L2_2(L3_2, L4_2)
            end
          end
        end
        L2_2 = A0_2._owner
        L3_2 = L2_2
        L2_2 = L2_2.exit
        L2_2(L3_2)
      end
    end
  end
end
L0_1.custom_on_right_stick_release = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_1 = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._process_wheel_item_show
  L2_2(L3_2)
end
L0_1._on_right_stick_up = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = -A1_2
  L2_1 = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._process_wheel_item_show
  L2_2(L3_2)
end
L0_1._on_right_stick_down = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = -A1_2
  L1_1 = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._process_wheel_item_show
  L2_2(L3_2)
end
L0_1._on_right_stick_left = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L1_1 = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._process_wheel_item_show
  L2_2(L3_2)
end
L0_1._on_right_stick_right = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.abs
  L2_2 = L1_1
  L1_2 = L1_2(L2_2)
  L2_2 = L4_1
  if not (L1_2 > L2_2) then
    L1_2 = math
    L1_2 = L1_2.abs
    L2_2 = L2_1
    L1_2 = L1_2(L2_2)
    L2_2 = L4_1
    if not (L1_2 > L2_2) then
      goto lbl_27
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._update_wheel_pointer
  L3_2 = L1_1
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_wheel_item_index
  L3_2 = L1_1
  L4_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._update_state
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  goto lbl_35
  ::lbl_27::
  L1_2 = A0_2._current_selected
  if L1_2 then
    L1_2 = A0_2._current_selected
    if 0 < L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.custom_on_right_stick_release
      L1_2(L2_2)
    end
  end
  ::lbl_35::
end
L0_1._process_wheel_item_show = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if 0 < A1_2 then
    L2_2 = A0_2._wheel_short_cut_count
    if A1_2 <= L2_2 then
      L2_2 = A0_2._current_selected
      if L2_2 == A1_2 then
        goto lbl_116
      end
      L2_2 = A0_2._row_data_list
      L2_2 = L2_2[A1_2]
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_AudioManager
      L4_2 = L3_2
      L3_2 = L3_2.PostEvent
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.GlobalVars
      L5_2 = L5_2.s_AudioManager
      L5_2 = L5_2.AudioConfig
      L5_2 = L5_2.UIWheelChangeSoundEvent
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._item_panel_list
      if L3_2 then
        L3_2 = A0_2._current_selected
        if L3_2 then
          L3_2 = A0_2._item_panel_list
          L3_2 = #L3_2
          if 0 < L3_2 then
            L3_2 = A0_2._current_selected
            if 0 < L3_2 then
              L3_2 = A0_2._item_panel_list
              L4_2 = A0_2._current_selected
              L3_2 = L3_2[L4_2]
              if L3_2 then
                L3_2 = A0_2._item_panel_list
                L4_2 = A0_2._current_selected
                L3_2 = L3_2[L4_2]
                L4_2 = L3_2
                L3_2 = L3_2.setup_checked
                L5_2 = false
                L3_2(L4_2, L5_2)
              end
            end
          end
        end
      end
      A0_2._current_selected = A1_2
      L3_2 = A0_2._item_panel_list
      L4_2 = A0_2._current_selected
      L3_2 = L3_2[L4_2]
      L4_2 = L3_2
      L3_2 = L3_2.setup_checked
      L5_2 = true
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.set_navigation_target
      L5_2 = A0_2._binder
      L5_2 = L5_2._wheel_short_cut_item_list
      L5_2 = L5_2[A1_2]
      L5_2 = L5_2.gameObject
      L3_2(L4_2, L5_2)
      if L2_2 then
        L3_2 = L2_2.IndexID
        if L3_2 then
          goto lbl_73
        end
      end
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.WheelItemType
      L3_2 = L3_2.None
      L3_2 = #L3_2
      ::lbl_73::
      A0_2._current_selected_type = L3_2
      L4_2 = A0_2
      L3_2 = A0_2._get_goto_id
      L5_2 = L2_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._setup_title
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      else
        L4_2 = A0_2
        L3_2 = A0_2._setup_title
        L5_2 = nil
        L3_2(L4_2, L5_2)
      end
  end
  else
    L2_2 = A0_2._item_panel_list
    if L2_2 then
      L2_2 = A0_2._current_selected
      if L2_2 then
        L2_2 = A0_2._item_panel_list
        L2_2 = #L2_2
        if 0 < L2_2 then
          L2_2 = A0_2._current_selected
          if 0 < L2_2 then
            L2_2 = A0_2._item_panel_list
            L3_2 = A0_2._current_selected
            L2_2 = L2_2[L3_2]
            if L2_2 then
              L2_2 = A0_2._item_panel_list
              L3_2 = A0_2._current_selected
              L2_2 = L2_2[L3_2]
              L3_2 = L2_2
              L2_2 = L2_2.setup_checked
              L4_2 = false
              L2_2(L3_2, L4_2)
            end
          end
        end
      end
    end
    A0_2._current_selected = nil
    A0_2._current_selected_type = nil
    L3_2 = A0_2
    L2_2 = A0_2._setup_title
    L4_2 = nil
    L2_2(L3_2, L4_2)
  end
  ::lbl_116::
end
L0_1._update_state = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if not L2_2 then
    L2_2 = A0_2._current_data
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._get_goto_id
      L4_2 = A0_2._current_data
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L3_2 = A0_2._tutorial_guide_wheel_item
        if L3_2 == 0 then
          L3_2 = G
          L3_2 = L3_2.GotoManager
          L3_2 = L3_2.Goto
          L4_2 = L2_2
          L5_2 = nil
          L6_2 = true
          L3_2(L4_2, L5_2, L6_2)
        else
          L3_2 = A0_2._tutorial_guide_wheel_item
          L4_2 = A0_2._current_selected_type
          if L3_2 == L4_2 then
            L3_2 = G
            L3_2 = L3_2.GotoManager
            L3_2 = L3_2.Goto
            L4_2 = L2_2
            L5_2 = nil
            L6_2 = true
            L3_2(L4_2, L5_2, L6_2)
          else
            L3_2 = G
            L3_2 = L3_2.NotifyManager
            L3_2 = L3_2.notify
            L4_2 = G
            L4_2 = L4_2.CS
            L4_2 = L4_2.NotifyType
            L4_2 = L4_2.UIPileToastMessageTextID
            L5_2 = "TutorialGuideWheelItem_Hint"
            L3_2(L4_2, L5_2)
          end
        end
      end
    end
  end
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.exit
  L2_2(L3_2)
end
L0_1._on_close_short_cut_wheel_dialog = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_mode
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.Input
    L1_2 = L1_2.mousePosition
    L2_2 = A0_2.default_mouse_position
    L2_2 = L1_2 - L2_2
    L4_2 = A0_2
    L3_2 = A0_2._update_wheel_pointer
    L5_2 = L2_2.x
    L6_2 = L2_2.y
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Vector3
    L3_2 = L3_2.SqrMagnitude
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_1
    L5_2 = L3_1
    L4_2 = L4_2 * L5_2
    if L3_2 > L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2._get_wheel_item_index
      L5_2 = L2_2.x
      L6_2 = L2_2.y
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L5_2 = A0_2
      L4_2 = A0_2._update_state
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2._update_state
      L5_2 = 0
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.tick_custom = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.IsUseEightWheel
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L3_2 = L2_2
    L2_2 = L2_2.GetEightWheelSettingByOrder
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L3_2 = L2_2
    L2_2 = L2_2.GetFourWheelSettingByOrder
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
end
L0_1._get_setting_index_by_order = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.WheelSelectConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.IsUseEightWheel
  if L3_2 then
    L3_2 = L2_2.Order
    return L3_2
  else
    L3_2 = L2_2.FourSlotOrder
    return L3_2
  end
end
L0_1._get_setting_default_order_by_index = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.IsUseEightWheel
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIUtils
    L3_2 = L3_2.GetWheelItemIndexByEightWheel
    L4_2 = A1_2
    L5_2 = A2_2
    return L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIUtils
    L3_2 = L3_2.GetWheelItemIndexByFourWheel
    L4_2 = A1_2
    L5_2 = A2_2
    return L3_2(L4_2, L5_2)
  end
end
L0_1._get_wheel_item_index = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIUtils
  L3_2 = L3_2.GetAngleByPos
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = -L3_2
  L5_2 = G
  L5_2 = L5_2.MathUtils
  L5_2 = L5_2.get_sign
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L3_2 = L4_2 * L5_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_wheel_pointer
  L4_2 = L4_2.transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Quaternion
  L5_2 = L5_2.Euler
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Vector3
  L7_2 = 0
  L8_2 = 0
  L9_2 = L3_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2.rotation = L5_2
end
L0_1._update_wheel_pointer = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._current_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._get_goto_id
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GotoConfigExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
  end
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = L3_2.UnlockID
  end
  if A1_2 ~= nil and L4_2 then
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.is_unlock
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_title
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = A1_2.FuncName
      L5_2(L6_2, L7_2)
  end
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_title
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "FuncName_Default"
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_title = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureStatic
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentGameModeType
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameModeType
  L3_2 = L3_2.Town
  if L2_2 ~= L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GameModeType
    L3_2 = L3_2.Maze
    if L2_2 ~= L3_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.GameModeType
      L3_2 = L3_2.Train
      if L2_2 ~= L3_2 then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.GameModeType
        L3_2 = L3_2.TownRoom
        if L2_2 ~= L3_2 then
          goto lbl_40
        end
      end
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameModeType
  L2_2 = L3_2.Train
  ::lbl_40::
  if A1_2 then
    L3_2 = 0
    L4_2 = A1_2.GameModeList
    L4_2 = L4_2.Length
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A1_2.GameModeList
      L7_2 = L7_2[L6_2]
      L8_2 = #L2_2
      if L7_2 == L8_2 then
        L8_2 = A1_2.FuncGotoIDList
        L8_2 = L8_2.Length
        L9_2 = A1_2.GameModeList
        L9_2 = L9_2.Length
        if L8_2 == L9_2 then
          L8_2 = A1_2.FuncGotoIDList
          L8_2 = L8_2[L6_2]
          return L8_2
        else
          L8_2 = A1_2.FuncGotoIDList
          L8_2 = L8_2[0]
          return L8_2
        end
      end
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_goto_id = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = 0
  L1_1 = L1_2
  L1_2 = 0
  L2_1 = L1_2
end
L0_1._on_dispose = L7_1
return L0_1
