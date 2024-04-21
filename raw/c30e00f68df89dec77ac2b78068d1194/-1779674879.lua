local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PhotoGraphSettingInfoItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_toggle
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_key_map_zone
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.node_key_map_zone
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._data = nil
  A0_2._on_click_handler = nil
  A0_2._on_click_listener = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  A0_2._data = A1_2
  L6_2 = A0_2
  L5_2 = A0_2.register_click_handler
  L7_2 = A2_2
  L8_2 = A4_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_title
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._set_enable
  L5_2(L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_click_handler = A1_2
  A0_2._on_click_listener = A2_2
end
L0_1.register_click_handler = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_click
    L1_2(L2_2)
  end
end
L0_1._on_root = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._on_click_handler
  if L1_2 then
    L1_2 = A0_2._on_click_handler
    L2_2 = A0_2._on_click_listener
    L3_2 = A0_2._data
    L4_2 = A0_2._data
    L4_2 = L4_2.IsEnable
    L4_2 = not L4_2
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.SettingType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PhotoGraphSettingItemType
  L2_2 = L2_2.LookAtCamera
  if L1_2 == L2_2 then
  else
    L1_2 = A0_2._data
    L1_2 = L1_2.SettingType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.PhotoGraphSettingItemType
    L2_2 = L2_2.BodyBackFace
    if L1_2 ~= L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._set_enable
      L1_2(L2_2)
    end
  end
end
L0_1._on_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_title = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._set_enable
  L2_2(L3_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._set_enable
  L1_2(L2_2)
end
L0_1._on_got_focus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_toggle
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._data
  L3_2 = L3_2.IsEnable
  L1_2(L2_2, L3_2)
end
L0_1._set_enable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_toggle
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_enable_display_manual = L1_1
return L0_1
