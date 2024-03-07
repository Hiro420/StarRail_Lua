local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ResistIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ResistIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._index = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_event
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._index = A2_2
  L3_2 = A1_2.DamageType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.DamageResistanceTypeExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_icon
    L8_2 = L4_2.Icon
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_hint_icon
    L8_2 = L4_2.Icon
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_hint
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "MonsterDamageResistanceType_"
  L9_2 = L3_2
  L8_2 = L3_2.ToString
  L8_2 = L8_2(L9_2)
  L7_2 = L7_2 .. L8_2
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_hint
  L5_2(L6_2)
end
L0_1.setup_type_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._index = A2_2
  L3_2 = A1_2.Key
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.StatusResistanceTypeExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_icon
    L8_2 = L4_2.Icon
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_hint_icon
    L8_2 = L4_2.Icon
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_hint
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "MonsterStatusResistanceType_"
  L9_2 = L3_2
  L8_2 = L3_2.ToString
  L8_2 = L8_2(L9_2)
  L7_2 = L7_2 .. L8_2
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_hint
  L5_2(L6_2)
end
L0_1.setup_status_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_handler = A2_2
end
L0_1.register_select_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._deselect_callback = A1_2
  A0_2._deselect_handler = A2_2
end
L0_1.register_deselect_callback = L1_1
function L1_1(A0_2, A1_2)
  A0_2._in_pressing = true
end
L0_1._on_touch_start = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._in_pressing = false
  L3_2 = A0_2
  L2_2 = A0_2._on_deselect
  L2_2(L3_2)
end
L0_1._on_touch_end = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._unbind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L1_2(L2_2, L3_2)
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.is_gamepad_input
    L0_3 = L0_3()
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.save_navigation_target
      L2_3 = A0_2._binder
      L2_3 = L2_3.btn_root
      L2_3 = L2_3.gameObject
      L0_3(L1_3, L2_3)
    end
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._select_callback
    L2_3 = A0_2._select_handler
    L3_3 = A0_2._index
    L0_3(L1_3, L2_3, L3_3)
  end
  A0_2._on_select = L1_2
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._deselect_callback
    L2_3 = A0_2._deselect_handler
    L3_3 = A0_2._index
    L0_3(L1_3, L2_3, L3_3)
  end
  A0_2._on_deselect = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L2_2 = A0_2._on_select
    L1_2.onSelectTrigger = L2_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L2_2 = A0_2._on_deselect
    L1_2.onDeselectTrigger = L2_2
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_pc_mode
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.EventTriggerListener
      L1_2 = L1_2.Get
      L2_2 = A0_2._binder
      L2_2 = L2_2.btn_root
      L2_2 = L2_2.gameObject
      L1_2 = L1_2(L2_2)
      L2_2 = A0_2._on_select
      L1_2.OnEnterTrigger = L2_2
      L2_2 = A0_2._on_deselect
      L1_2.OnExitTrigger = L2_2
    else
      L2_2 = A0_2
      L1_2 = A0_2._bind_gesture
      L3_2 = GestureType
      L3_2 = L3_2.TouchStart
      L4_2 = A0_2._on_touch_start
      L1_2(L2_2, L3_2, L4_2)
      L2_2 = A0_2
      L1_2 = A0_2._bind_gesture
      L3_2 = GestureType
      L3_2 = L3_2.TouchUp
      L4_2 = A0_2._on_touch_end
      L1_2(L2_2, L3_2, L4_2)
      L2_2 = A0_2
      L1_2 = A0_2._bind_long_click
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_root
      L4_2 = A0_2._on_select
      L5_2 = true
      L6_2 = 0
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
      L2_2 = A0_2
      L1_2 = A0_2._bind_release
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_root
      L4_2 = A0_2._on_deselect
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.EventTriggerListener
      L1_2 = L1_2.Get
      L2_2 = A0_2._binder
      L2_2 = L2_2.btn_root
      L2_2 = L2_2.gameObject
      L1_2 = L1_2(L2_2)
      function L2_2()
        local L0_3, L1_3
        L0_3 = A0_2._in_pressing
        if L0_3 then
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3._on_select
          L0_3(L1_3)
        end
      end
      L1_2.OnEnterTrigger = L2_2
    end
  end
end
L0_1._setup_btn_event = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_hint = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn_event
  L2_2(L3_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
return L0_1
