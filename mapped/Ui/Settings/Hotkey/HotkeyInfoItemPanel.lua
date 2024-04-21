local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Settings.Hotkey.HotkeyInfoItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Settings.Hotkey.HotkeyDropItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HotkeyInfoItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._cur_show_type = nil
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_InControlActionsManager
  L1_2 = L1_2.LastInputDeviceStyle
  A0_2._cur_input_device_style = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback_self = A1_2
  A0_2._callback_func = A2_2
end
L0_1.setup_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = L3_2
  L3_2 = L3_2.ClearAnimationState
  L3_2(L4_2)
  A0_2.setting_data = A1_2
  A0_2._cur_show_type = A2_2
  L3_2 = A0_2.setting_data
  L3_2 = L3_2.in_control_data
  L3_2 = L3_2.ActionSettingRow
  L3_2 = L3_2.SettableInControlTypes
  A0_2._settable_in_control_types = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_title_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_content_view
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.is_can_edit
  if L1_2 then
    L1_2 = A0_2._cur_show_type
    L2_2 = HotkeyShowType
    L2_2 = L2_2.Gamepad
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_hotkey_drop_down
      L2_2 = L1_2
      L1_2 = L1_2.Show
      L1_2(L2_2)
    else
      L1_2 = A0_2._cur_show_type
      L2_2 = HotkeyShowType
      L2_2 = L2_2.Keyboard
      if L1_2 == L2_2 then
        L1_2 = G
        L1_2 = L1_2.UIManager
        L1_2 = L1_2.load_and_async_show
        L2_2 = "Ui.Settings.Hotkey.HotKeySettingDialog"
        L3_2 = A0_2.setting_data
        L3_2 = L3_2.in_control_data
        L1_2 = L1_2(L2_2, L3_2)
        L2_2 = L1_2.LuaTable
        L3_2 = L2_2
        L2_2 = L2_2.setup_callback
        L4_2 = A0_2._callback_self
        L5_2 = A0_2._callback_func
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L0_1._on_btn_root_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.setting_title_text_id
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_setting_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_setting_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.setting_data
    L3_2 = L3_2.setting_title_text_id
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_setting_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_title_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_setting_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_drop_down
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_drop_down_pc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_exchange_mini
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_link
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hot_key
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_single_key
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hotkey_drop_down
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.setting_data
  L1_2 = L1_2.show_type
  L2_2 = SettingItemType
  L2_2 = L2_2.Common
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_drop_down_pc
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_drop_down
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = A0_2.setting_data
    L1_2 = L1_2.show_type
    L2_2 = SettingItemType
    L2_2 = L2_2.Link
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_link
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2.setting_data
      L1_2 = L1_2.show_type
      L2_2 = SettingItemType
      L2_2 = L2_2.Slider
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.node_exchange_mini
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2.setting_data
        L1_2 = L1_2.show_type
        L2_2 = SettingItemType
        L2_2 = L2_2.HotKey
        if L1_2 == L2_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.node_hot_key
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetActive
          L3_2 = true
          L1_2(L2_2, L3_2)
          L1_2 = A0_2._cur_show_type
          L2_2 = HotkeyShowType
          L2_2 = L2_2.Keyboard
          if L1_2 == L2_2 then
            L1_2 = A0_2._binder
            L1_2 = L1_2.node_single_key
            L2_2 = L1_2
            L1_2 = L1_2.SafeSetActive
            L3_2 = true
            L1_2(L2_2, L3_2)
          else
            L1_2 = A0_2._cur_show_type
            L2_2 = HotkeyShowType
            L2_2 = L2_2.Gamepad
            if L1_2 == L2_2 then
              L1_2 = A0_2.setting_data
              L1_2 = L1_2.in_control_data
              L1_2 = L1_2.EnableBindGamepad
              if L1_2 then
                L1_2 = A0_2._binder
                L1_2 = L1_2.node_hotkey_drop_down
                L2_2 = L1_2
                L1_2 = L1_2.SafeSetActive
                L3_2 = true
                L1_2(L2_2, L3_2)
                L1_2 = A0_2._binder
                L1_2 = L1_2.node_hotkey_drop_down
                L2_2 = L1_2
                L1_2 = L1_2.SetLuaBindingCallback
                L3_2 = A0_2
                L4_2 = A0_2.on_show_item
                L5_2 = A0_2.on_show_select_item
                L1_2(L2_2, L3_2, L4_2, L5_2)
                L1_2 = A0_2._binder
                L1_2 = L1_2.node_hotkey_drop_down
                L2_2 = L1_2
                L1_2 = L1_2.SetOptionsCount
                L3_2 = A0_2._settable_in_control_types
                L3_2 = L3_2.Length
                L1_2(L2_2, L3_2)
                L1_2 = A0_2.setting_data
                L1_2 = L1_2.in_control_data
                L1_2 = L1_2.BindControlTypeIndex
                if 0 <= L1_2 then
                  L1_2 = A0_2._binder
                  L1_2 = L1_2.node_hotkey_drop_down
                  L2_2 = A0_2.setting_data
                  L2_2 = L2_2.in_control_data
                  L2_2 = L2_2.BindControlTypeIndex
                  L1_2.value = L2_2
                end
              else
                L1_2 = A0_2._binder
                L1_2 = L1_2.node_single_key
                L2_2 = L1_2
                L1_2 = L1_2.SafeSetActive
                L3_2 = true
                L1_2(L2_2, L3_2)
              end
            end
          end
        end
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_un_change
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.setting_data
  L3_2 = L3_2.is_can_edit
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.setting_data
  L3_2 = L3_2.in_control_data
  L3_2 = L3_2.InControlActionMapRow
  L3_2 = L3_2.actionTextmapID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_img_mark_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_show_type
  L2_2 = HotkeyShowType
  L2_2 = L2_2.Keyboard
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_key_map_info
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_key
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.setting_data
    L3_2 = L3_2.in_control_data
    L4_2 = L3_2
    L3_2 = L3_2.GetKeyboardTipTextID
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._cur_show_type
    L2_2 = HotkeyShowType
    L2_2 = L2_2.Gamepad
    if L1_2 == L2_2 then
      L1_2 = A0_2.setting_data
      L1_2 = L1_2.in_control_data
      L1_2 = L1_2.EnableBindGamepad
      if not L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.node_img_mark_info
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
        L2_2 = A0_2
        L1_2 = A0_2._load_sprite_to
        L3_2 = A0_2._binder
        L3_2 = L3_2.img_mark_info
        L4_2 = A0_2.setting_data
        L4_2 = L4_2.in_control_data
        L5_2 = L4_2
        L4_2 = L4_2.GetGamepadTipIcon
        L4_2, L5_2 = L4_2(L5_2)
        L1_2(L2_2, L3_2, L4_2, L5_2)
      end
    end
  end
end
L0_1._setup_content_view = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A2_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HotkeyDropItem
    L8_2 = G
    L8_2 = L8_2.HotkeyDropItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = A2_2.transform
    L5_2(L6_2, L7_2)
    A2_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._settable_in_control_types
  L5_2 = L5_2.Length
  if A3_2 < L5_2 then
    L5_2 = A0_2._settable_in_control_types
    L5_2 = L5_2[A3_2]
    L7_2 = L4_2
    L6_2 = L4_2.setup_view
    L8_2 = L5_2
    L9_2 = A0_2._cur_input_device_style
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1.on_show_item = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if 0 <= A2_2 then
    L3_2 = A0_2.setting_data
    L3_2 = L3_2.in_control_data
    L3_2 = L3_2.EnableBindGamepad
    if L3_2 then
      L3_2 = A0_2._settable_in_control_types
      L3_2 = L3_2[A2_2]
      L5_2 = A0_2
      L4_2 = A0_2._load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.img_icon
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.UIUtils
      L7_2 = L7_2.GetGamepadTipIconByType
      L8_2 = L3_2
      L9_2 = A0_2._cur_input_device_style
      L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_hotkey_drop_down
      L4_2 = L4_2.value
      L5_2 = A0_2.setting_data
      L5_2 = L5_2.in_control_data
      L5_2 = L5_2.BindControlTypeIndex
      if L4_2 ~= L5_2 then
        L4_2 = A0_2.setting_data
        L4_2 = L4_2.in_control_data
        L4_2 = L4_2.IsSubmitOrCancelAction
        if L4_2 then
          L4_2 = A0_2.setting_data
          L4_2 = L4_2.in_control_data
          L5_2 = L4_2
          L4_2 = L4_2.SwitchDefaultSubmitAndCancel
          L4_2(L5_2)
          L4_2 = A0_2._callback_func
          if L4_2 then
            L4_2 = A0_2._callback_func
            L5_2 = A0_2._callback_self
            L4_2(L5_2)
          end
        else
          L4_2 = A0_2.setting_data
          L4_2 = L4_2.in_control_data
          L5_2 = L4_2
          L4_2 = L4_2.TrySaveGamepadActionBind
          L6_2 = L3_2
          L4_2 = L4_2(L5_2, L6_2)
          if L4_2 then
            L5_2 = A0_2._callback_func
            if L5_2 then
              L5_2 = A0_2._callback_func
              L6_2 = A0_2._callback_self
              L5_2(L6_2)
            end
          end
        end
      end
    end
  end
end
L0_1.on_show_select_item = L1_1
return L0_1
