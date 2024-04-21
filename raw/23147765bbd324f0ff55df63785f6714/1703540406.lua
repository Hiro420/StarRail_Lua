local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = "Root/TextPanel/Text"
L1_1 = {}
L2_1 = "StickerItemFloat_Loop1"
L3_1 = "StickerItemFloat_Loop2"
L1_1[1] = L2_1
L1_1[2] = L3_1
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "TravelBrochurePasterItemPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  A0_2._in_drag = false
  A0_2._in_rotate = false
  A0_2._in_edit = false
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_drag
  L2_2 = L1_2
  L1_2 = L1_2.SetBeginDragCallback
  L3_2 = A0_2._on_begin_drag
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_drag
  L2_2 = L1_2
  L1_2 = L1_2.SetEndDragCallback
  L3_2 = A0_2._on_end_drag
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_drag
  L2_2 = L1_2
  L1_2 = L1_2.SetPointerDownCallback
  L3_2 = A0_2._on_drag_press_down
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_drag
  L2_2 = L1_2
  L1_2 = L1_2.SetPointerUpCallback
  L3_2 = A0_2._on_drag_press_up
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_drag
  L2_2 = L1_2
  L1_2 = L1_2.ClearObstacle
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_rotate
  L2_2 = L1_2
  L1_2 = L1_2.SetPointerDownCallback
  L3_2 = A0_2._on_rotate_press_down
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_rotate
  L2_2 = L1_2
  L1_2 = L1_2.SetPointerUpCallback
  L3_2 = A0_2._on_rotate_press_up
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_remove
  L4_2 = A0_2._on_btn_remove_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_control_btn
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_virtual_hint
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_control_btn
      L0_3(L1_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_virtual_hint
      L0_3(L1_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.control_btn_remove
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.IsSelectedByController
  end
  L1_2.ActionEnabled = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_edit_btns
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActiveByScale
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L2_1._refresh_control_btn = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L2_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._edited_callback = A1_2
  A0_2._edited_handler = A2_2
end
L2_1.register_edited_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._remove_callback = A1_2
  A0_2._remove_handler = A2_2
end
L2_1.register_remove_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_drag
  L3_2 = L2_2
  L2_2 = L2_2.ClearObstacle
  L2_2(L3_2)
  if A1_2 ~= nil then
    L2_2 = #A1_2
    if 0 < L2_2 then
      L2_2 = pairs
      L3_2 = A1_2
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = A0_2._binder
        L7_2 = L7_2.mono_drag
        L8_2 = L7_2
        L7_2 = L7_2.AddObstacle
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
end
L2_1.set_obstacle_node = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A0_2._binder
    if L2_2 ~= nil then
      L2_2 = CS
      L2_2 = L2_2.UnityEngine
      L2_2 = L2_2.UI
      L2_2 = L2_2.LayoutRebuilder
      L2_2 = L2_2.ForceRebuildLayoutImmediate
      L3_2 = A0_2._binder
      L3_2 = L3_2.root
      L3_2 = L3_2.transform
      L2_2(L3_2)
      L2_2 = A0_2._node_loaded
      if L2_2 ~= nil then
        L2_2 = CS
        L2_2 = L2_2.UnityEngine
        L2_2 = L2_2.UI
        L2_2 = L2_2.LayoutRebuilder
        L2_2 = L2_2.ForceRebuildLayoutImmediate
        L3_2 = A0_2._node_loaded
        L3_2 = L3_2.transform
        L2_2(L3_2)
      end
    end
  end
end
L2_1._on_owner_active_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_follow
  L2_2.enabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_follow
  L2_2.enabled = A1_2
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIRandomUtils
    L2_2 = L2_2.RangeInt
    L3_2 = 1
    L4_2 = L1_1
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIAnimationUtils
    L3_2 = L3_2.PlayFromBegin
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_follow
    L5_2 = L1_1[L2_2]
    L3_2(L4_2, L5_2)
  end
end
L2_1.enable_follow = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._paster_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_location
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_paster
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_control_btn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_virtual_hint
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L2_2(L3_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._paster_data
  L2_2 = L1_2
  L1_2 = L1_2.SetLocation
  L4_2 = A0_2
  L3_2 = A0_2._get_param
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.nodes_revserse_rotate
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Vector3
    L7_2 = 0
    L8_2 = 0
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_root
    L9_2 = L9_2.localEulerAngles
    L9_2 = L9_2.z
    L9_2 = -L9_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2.localEulerAngles = L6_2
  end
end
L2_1._setup_location = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._paster_data
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TravelBrochurePasterType
  L2_2 = L2_2.Image
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img
    L4_2 = A0_2._paster_data
    L4_2 = L4_2.PasterImage
    L1_2(L2_2, L3_2, L4_2)
    A0_2._node_loaded = nil
  else
    L1_2 = A0_2._paster_data
    L1_2 = L1_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TravelBrochurePasterType
    L2_2 = L2_2.Text
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2.sync_load_prefab
      L3_2 = A0_2._paster_data
      L3_2 = L3_2.Row
      L3_2 = L3_2.TextPasterPrefab
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_text
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      L2_2 = G
      L2_2 = L2_2.ComponentExtensions
      L2_2 = L2_2.SafeGetCmpt
      L3_2 = typeof
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.LocalizedText
      L3_2 = L3_2(L4_2)
      L4_2 = L1_2.transform
      L5_2 = L0_1
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L4_2 = L2_2
      L3_2 = L2_2.SafeSetTextID
      L5_2 = A0_2._paster_data
      L5_2 = L5_2.PasterText
      L3_2(L4_2, L5_2)
      A0_2._node_loaded = L1_2
    end
  end
end
L2_1._refresh_paster = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._in_edit = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_edit
  L2_2(L3_2)
end
L2_1.refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_edit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._in_edit
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._in_edit
  if L1_2 then
    L1_2 = A0_2._in_drag
    L1_2 = A0_2._in_rotate
    L1_2 = not L1_2 and L1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_remove
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rotate
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L2_1._refresh_edit = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2
  L2_2 = A1_2.UpdatePaster
  L4_2 = A0_2._paster_data
  L6_2 = A0_2
  L5_2 = A0_2._get_param
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L2_1.update_paster_data = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  return L1_2
end
L2_1._get_param = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2._in_drag = true
  L2_2 = A0_2
  L1_2 = A0_2._refresh_edit
  L1_2(L2_2)
end
L2_1._on_begin_drag = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2._in_drag = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_edit
  L1_2(L2_2)
end
L2_1._on_end_drag = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._edited_callback
  L3_2 = A0_2._edited_handler
  L4_2 = A0_2._paster_data
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_drag_press_down = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._edited_callback
  L3_2 = A0_2._edited_handler
  L4_2 = A0_2._paster_data
  L6_2 = A0_2
  L5_2 = A0_2._get_param
  L5_2, L6_2 = L5_2(L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TravelBrochureOperated
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L2_1._on_drag_press_up = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_sfx_ui_common_check_click"
  L1_2(L2_2, L3_2)
  A0_2._in_rotate = true
  L2_2 = A0_2
  L1_2 = A0_2._refresh_edit
  L1_2(L2_2)
end
L2_1._on_rotate_press_down = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_sfx_ui_common_order_click"
  L1_2(L2_2, L3_2)
  A0_2._in_rotate = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_edit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._edited_callback
  L3_2 = A0_2._edited_handler
  L4_2 = A0_2._paster_data
  L6_2 = A0_2
  L5_2 = A0_2._get_param
  L5_2, L6_2 = L5_2(L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TravelBrochureOperated
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L2_1._on_rotate_press_up = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._remove_callback
  L3_2 = A0_2._remove_handler
  L4_2 = A0_2._paster_data
  L4_2 = L4_2.ID
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_btn_remove_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L4_2 = A0_2._paster_data
  L4_2 = L4_2.ID
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_btn_root = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rect
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransformUtility
  L3_2 = L3_2.RectangleContainsScreenPoint
  L4_2 = L2_2
  L5_2 = A1_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_UICamera
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  return L3_2
end
L2_1.is_in_rect = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L1_2 = L1_2.position
  return L1_2
end
L2_1.get_world_position = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_drag
  L4_2 = L3_2
  L3_2 = L3_2.SimulateDrag
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L2_1.simulate_drag = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_rotate
  L3_2 = L2_2
  L2_2 = L2_2.SimulateRotate
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.simulate_rotate = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_scale
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_scale
  L3_2 = L2_2
  L2_2 = L2_2.SimulateScale
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.simulate_scale = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_shortcut_top
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_shortcut_top
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.is_gamepad_input
    L3_2 = L3_2()
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.is_in_special_zoom
      L3_2 = L3_2(L4_2)
    end
    L1_2(L2_2, L3_2)
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_root
      L1_2 = L1_2.IsSelectedByController
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_shortcut_bottom
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = pairs
    L3_2 = A0_2._binder
    L3_2 = L3_2.nodes_shortcut_bottom_highlight
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = L6_2
      L7_2 = L6_2.SafeSetActive
      L10_2 = A0_2
      L9_2 = A0_2.is_in_special_zoom
      L9_2 = L9_2(L10_2)
      L9_2 = not L9_2
      L7_2(L8_2, L9_2)
    end
    L2_2 = pairs
    L3_2 = A0_2._binder
    L3_2 = L3_2.nodes_shortcut_bottom_selected
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = L6_2
      L7_2 = L6_2.SafeSetActive
      L10_2 = A0_2
      L9_2 = A0_2.is_in_special_zoom
      L9_2, L10_2 = L9_2(L10_2)
      L7_2(L8_2, L9_2, L10_2)
    end
  end
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.incontrol_tips_selected
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2.is_in_special_zoom
    L7_2 = L7_2(L8_2)
    L6_2.IsShowTip = L7_2
  end
end
L2_1._refresh_virtual_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_virtual_hint
  L1_2(L2_2)
end
L2_1._on_enter_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_virtual_hint
  L1_2(L2_2)
end
L2_1._on_leave_special_zoom = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._in_drag = false
  A0_2._in_rotate = false
  L3_2 = A0_2
  L2_2 = A0_2._refresh_control_btn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_virtual_hint
  L2_2(L3_2)
end
L2_1._on_in_control_input_switch = L3_1
return L2_1
