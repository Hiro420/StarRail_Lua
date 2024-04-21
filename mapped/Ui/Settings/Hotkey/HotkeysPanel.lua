local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Settings.Hotkey.HotkeysKeyboardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Hotkey.HotkeysGamepadPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Hotkey.HotkeysPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HotkeysPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Setting_keyShow"
L2_1 = "SpriteOutput/TabIcon/Settings/SettingsHotkeysIcon.png"
L3_1 = {}
L4_1 = HotkeyGroupType
L4_1 = L4_1.System
L3_1[L4_1] = "UIText_Setting_key_System"
L4_1 = HotkeyGroupType
L4_1 = L4_1.Maze
L3_1[L4_1] = "UIText_Setting_key_OutOfBattle"
L4_1 = HotkeyGroupType
L4_1 = L4_1.Battle
L3_1[L4_1] = "UIText_Setting_key_Battle"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  A0_2._keyboard_data_list = L1_2
  L1_2 = {}
  A0_2._gamepad_data_list = L1_2
  A0_2._cur_show_type = nil
  L2_2 = A0_2
  L1_2 = A0_2._init_cur_show_type
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_data_list
  L3_2 = HotkeyShowType
  L3_2 = L3_2.Keyboard
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_data_list
  L3_2 = HotkeyShowType
  L3_2 = L3_2.Gamepad
  L1_2(L2_2, L3_2)
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_show_type
  L2_2 = HotkeyShowType
  L2_2 = L2_2.Keyboard
  if L1_2 == L2_2 then
    L1_2 = A0_2._keyboard_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  else
    L1_2 = A0_2._cur_show_type
    L2_2 = HotkeyShowType
    L2_2 = L2_2.Gamepad
    if L1_2 == L2_2 then
      L1_2 = A0_2._gamepad_panel
      L2_2 = L1_2
      L1_2 = L1_2.get_first_selected_object
      return L1_2(L2_2)
    end
  end
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_mobile_gamepad_mode
    L1_2 = L1_2()
    if not L1_2 then
      goto lbl_17
    end
  end
  L1_2 = HotkeyShowType
  L1_2 = L1_2.Gamepad
  A0_2._cur_show_type = L1_2
  goto lbl_20
  ::lbl_17::
  L1_2 = HotkeyShowType
  L1_2 = L1_2.Keyboard
  A0_2._cur_show_type = L1_2
  ::lbl_20::
end
L0_1._init_cur_show_type = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_ps_platform
  L2_2 = L2_2()
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._init_data_list_by_group_type
    L4_2 = HotkeyGroupType
    L4_2 = L4_2.System
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.IsAdventurePhase
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._init_data_list_by_group_type
    L4_2 = HotkeyGroupType
    L4_2 = L4_2.Maze
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.IsBattleGamePhase
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._init_data_list_by_group_type
    L4_2 = HotkeyGroupType
    L4_2 = L4_2.Battle
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._init_data_list = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = 1
  L4_2 = pairs
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ActionSettingExcelTable
  L5_2 = L5_2.dataDict
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.ShowType
    L9_2 = L9_2 == A2_2
    L10_2 = L8_2.GroupType
    if A1_2 == L10_2 and L9_2 then
      L10_2 = {}
      L11_2 = SettingItemType
      L11_2 = L11_2.HotKey
      L10_2.show_type = L11_2
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.Client
      L11_2 = L11_2.InControlActionsManager
      L11_2 = L11_2.Instance
      L12_2 = L11_2
      L11_2 = L11_2.GetInControlActionData
      L13_2 = L8_2.ActionName
      L11_2 = L11_2(L12_2, L13_2)
      L10_2.in_control_data = L11_2
      L11_2 = L10_2.in_control_data
      L11_2 = L11_2.EnableBindKeyboard
      if not L11_2 then
        L11_2 = L10_2.in_control_data
        L11_2 = L11_2.EnableBindGamepad
      end
      L10_2.is_can_edit = L11_2
      if L3_2 == 1 then
        L11_2 = L3_1[A1_2]
        L10_2.setting_title_text_id = L11_2
      end
      L3_2 = L3_2 + 1
      L11_2 = HotkeyShowType
      L11_2 = L11_2.Keyboard
      if A2_2 == L11_2 then
        L11_2 = table
        L11_2 = L11_2.insert
        L12_2 = A0_2._keyboard_data_list
        L13_2 = L10_2
        L11_2(L12_2, L13_2)
      else
        L11_2 = HotkeyShowType
        L11_2 = L11_2.Gamepad
        if A2_2 == L11_2 then
          L11_2 = table
          L11_2 = L11_2.insert
          L12_2 = A0_2._gamepad_data_list
          L13_2 = L10_2
          L11_2(L12_2, L13_2)
        end
      end
    end
  end
end
L0_1._init_data_list_by_group_type = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_normal_img
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_selected_img
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reset
  L4_2 = A0_2._on_btn_reset_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HotkeysKeyboardPanel
  L4_2 = G
  L4_2 = L4_2.HotkeysKeyboardPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._keyboard_panel = L1_2
  L1_2 = A0_2._keyboard_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_keyboard_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HotkeysGamepadPanel
  L4_2 = G
  L4_2 = L4_2.HotkeysGamepadPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._gamepad_panel = L1_2
  L1_2 = A0_2._gamepad_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_gamepad_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_SettingManager
  L2_2 = L1_2
  L1_2 = L1_2.ResetActionBind
  L1_2(L2_2)
  L1_2 = A0_2._cur_show_type
  L2_2 = HotkeyShowType
  L2_2 = L2_2.Keyboard
  if L1_2 == L2_2 then
    L1_2 = A0_2._keyboard_panel
    L2_2 = L1_2
    L1_2 = L1_2.refresh_list
    L1_2(L2_2)
  else
    L1_2 = A0_2._cur_show_type
    L2_2 = HotkeyShowType
    L2_2 = L2_2.Gamepad
    if L1_2 == L2_2 then
      L1_2 = A0_2._gamepad_panel
      L2_2 = L1_2
      L1_2 = L1_2.refresh_list
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_reset_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._keyboard_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._gamepad_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_show_type
  L2_2 = HotkeyShowType
  L2_2 = L2_2.Keyboard
  if L1_2 == L2_2 then
    L1_2 = A0_2._keyboard_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._keyboard_data_list
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._cur_show_type
    L2_2 = HotkeyShowType
    L2_2 = L2_2.Gamepad
    if L1_2 == L2_2 then
      L1_2 = A0_2._gamepad_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = A0_2._gamepad_data_list
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._update_panel_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hotkeys_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_panel_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_panel_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_show_type
  L2_2 = HotkeyShowType
  L2_2 = L2_2.Keyboard
  if L1_2 == L2_2 then
    L1_2 = A0_2._keyboard_panel
    L2_2 = L1_2
    L1_2 = L1_2._on_unselect
    L1_2(L2_2)
  else
    L1_2 = A0_2._cur_show_type
    L2_2 = HotkeyShowType
    L2_2 = L2_2.Gamepad
    if L1_2 == L2_2 then
      L1_2 = A0_2._gamepad_panel
      L2_2 = L1_2
      L1_2 = L1_2._on_unselect
      L1_2(L2_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hotkeys_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_hotkeys_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_dispose = L4_1
return L0_1
