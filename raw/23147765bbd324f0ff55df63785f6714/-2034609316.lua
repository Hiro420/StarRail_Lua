local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Component.SceneObjClickHintDotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.SceneObjClickHintDotPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.SceneObjClickHintUIData"
L0_1(L1_1)
L0_1 = 20
L1_1 = 0.01
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "SceneObjClickHintMgrPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._dot_panel_cache = L3_2
  L3_2 = {}
  A0_2._prop_ui_data = L3_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._init_virtual_cursor_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIScreenSizeChanged
  L4_2 = A0_2._on_ui_screen_size_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SceneObjClickHintOnEnableInteract
  L4_2 = A0_2._on_enable_interact
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SceneObjClickHintOnDisableInteract
  L4_2 = A0_2._on_disable_interact
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SceneObjClickHintOnRuntimeStatusChanged
  L4_2 = A0_2._on_runtime_status_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.SceneObjClickHintOnAttachPointIndexChanged
  L4_2 = A0_2._on_attach_point_index_changed
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._prop_ui_data
  if L1_2 ~= nil then
    L1_2 = pairs
    L2_2 = A0_2._prop_ui_data
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = G
      L6_2 = L6_2.delete
      L7_2 = L5_2
      L6_2(L7_2)
    end
    A0_2._prop_ui_data = nil
  end
  L2_2 = A0_2
  L1_2 = A0_2._remove_virtual_cursor_event
  L1_2(L2_2)
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_load_all_registered_prop
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._register_virtual_cursor_event
  L1_2(L2_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._update_all_dots_position
  L2_2(L3_2)
end
L2_1._on_ui_screen_size_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsObjectNull
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A1_2.EntityRuntimeID
  if 0 < L2_2 then
    L2_2 = A0_2._prop_ui_data
    L3_2 = A1_2.EntityRuntimeID
    L2_2 = L2_2[L3_2]
    if L2_2 == nil then
      L3_2 = A0_2
      L2_2 = A0_2._add_prop
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L2_1._on_enable_interact = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsObjectNull
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A1_2.EntityRuntimeID
  if 0 < L2_2 then
    L2_2 = A0_2._prop_ui_data
    L3_2 = A1_2.EntityRuntimeID
    L2_2 = L2_2[L3_2]
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2._remove_prop
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L2_1._on_disable_interact = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsObjectNull
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = A1_2.EntityRuntimeID
  if 0 < L2_2 then
    L2_2 = A0_2._prop_ui_data
    L3_2 = A1_2.EntityRuntimeID
    L2_2 = L2_2[L3_2]
    if L2_2 ~= nil then
      L2_2 = A0_2._prop_ui_data
      L3_2 = A1_2.EntityRuntimeID
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2
      L2_2 = L2_2.update_dot_panel_status
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
end
L2_1._on_runtime_status_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.EntityRuntimeID
  if 0 < L2_2 then
    L2_2 = A0_2._prop_ui_data
    L3_2 = A1_2.EntityRuntimeID
    L2_2 = L2_2[L3_2]
    if L2_2 ~= nil then
      L2_2 = A0_2._prop_ui_data
      L3_2 = A1_2.EntityRuntimeID
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2
      L2_2 = L2_2.update_dot_panel_position
      L2_2(L3_2)
    end
  end
end
L2_1._on_attach_point_index_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SceneObjClickHintUtils
  L1_2 = L1_2.GetSceneSelectionRegisteredPropMonos
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = L1_2.Count
    if L2_2 ~= 0 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = G
    L7_2 = L7_2.UtilEngineWrap
    L7_2 = L7_2.IsCsObjectNull
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2._add_prop
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L2_1._init_load_all_registered_prop = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._snap_radius = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.ui_param_deliverer
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.ui_param_deliverer
    L2_2 = L1_2
    L1_2 = L1_2.TryGetFloatValue
    L3_2 = "VirtualCursorSnapRadius"
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._snap_radius = L1_2
  end
  L1_2 = A0_2._snap_radius
  if L1_2 <= 0 then
    L1_2 = L0_1
    A0_2._snap_radius = L1_2
  end
end
L2_1._init_virtual_cursor_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.VirtualCursor
  L1_2 = L1_2.Current
  if L1_2 ~= nil then
    L2_2 = A0_2._on_virtual_cursor_stop_callback
    if L2_2 == nil then
      function L2_2()
        local L0_3, L1_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._on_virtual_cursor_stop
        L0_3(L1_3)
      end
      A0_2._on_virtual_cursor_stop_callback = L2_2
    end
    L2_2 = L1_2.OnStop
    L3_2 = L2_2
    L2_2 = L2_2.AddListener
    L4_2 = A0_2._on_virtual_cursor_stop_callback
    L2_2(L3_2, L4_2)
  end
end
L2_1._register_virtual_cursor_event = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.VirtualCursor
  L1_2 = L1_2.Current
  if L1_2 ~= nil then
    L2_2 = A0_2._on_virtual_cursor_stop_callback
    if L2_2 ~= nil then
      L2_2 = L1_2.OnStop
      L3_2 = L2_2
      L2_2 = L2_2.RemoveListener
      L4_2 = A0_2._on_virtual_cursor_stop_callback
      L2_2(L3_2, L4_2)
      A0_2._on_virtual_cursor_stop_callback = nil
    end
  end
end
L2_1._remove_virtual_cursor_event = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.VirtualCursor
  L1_2 = L1_2.Current
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.UtilEngineWrap
    L2_2 = L2_2.IsCsObjectNull
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_20
    end
  end
  do return end
  ::lbl_20::
  L2_2 = L1_2.Position
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransformUtility
  L3_2 = L3_2.ScreenPointToLocalPointInRectangle
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L5_2 = L2_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_UICamera
  L7_2 = nil
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = nil
  L6_2 = nil
  L7_2 = pairs
  L8_2 = A0_2._prop_ui_data
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2.dot_panel
    L14_2 = L12_2
    L13_2 = L12_2.is_hint_active
    L13_2 = L13_2(L14_2)
    if L13_2 then
      L14_2 = L12_2
      L13_2 = L12_2.get_screen_position
      L13_2 = L13_2(L14_2)
      L14_2 = CS
      L14_2 = L14_2.UnityEngine
      L14_2 = L14_2.RectTransformUtility
      L14_2 = L14_2.ScreenPointToLocalPointInRectangle
      L15_2 = A0_2._binder
      L15_2 = L15_2.root
      L15_2 = L15_2.transform
      L16_2 = L13_2
      L17_2 = CS
      L17_2 = L17_2.RPG
      L17_2 = L17_2.Client
      L17_2 = L17_2.GlobalVars
      L17_2 = L17_2.s_UICamera
      L18_2 = nil
      L14_2, L15_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
      L17_2 = A0_2
      L16_2 = A0_2._is_cursor_inside_panel_snap_area
      L18_2 = L4_2
      L19_2 = L15_2
      L16_2, L17_2 = L16_2(L17_2, L18_2, L19_2)
      if L16_2 then
        L18_2 = L1_1
        if L17_2 > L18_2 and (L5_2 == nil or L5_2 > L17_2) then
          L5_2 = L17_2
          L6_2 = L12_2
        end
      end
    end
  end
  if L6_2 ~= nil then
    L8_2 = L1_2
    L7_2 = L1_2.SnapTo
    L10_2 = L6_2
    L9_2 = L6_2.get_screen_position
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  end
end
L2_1._on_virtual_cursor_stop = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L3_2 = L3_2.Distance
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._snap_radius
  L4_2 = L3_2 < L4_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L2_1._is_cursor_inside_panel_snap_area = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsObjectNull
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A1_2.EntityRuntimeID
    if 0 < L2_2 then
      L2_2 = A0_2._prop_ui_data
      L3_2 = A1_2.EntityRuntimeID
      L2_2 = L2_2[L3_2]
      if L2_2 == nil then
        L2_2 = G
        L2_2 = L2_2.SceneObjClickHintUIData
        L2_2 = L2_2.create
        L3_2 = A1_2
        L2_2 = L2_2(L3_2)
        if L2_2 == nil then
          return
        end
        L4_2 = A0_2
        L3_2 = A0_2._create_dot_panel
        L3_2 = L3_2(L4_2)
        L5_2 = L2_2
        L4_2 = L2_2.set_dot_panel
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
        L4_2 = A0_2._prop_ui_data
        L5_2 = A1_2.EntityRuntimeID
        L4_2[L5_2] = L2_2
      end
    end
  end
end
L2_1._add_prop = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._prop_ui_data
  L3_2 = A1_2.EntityRuntimeID
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._recycle_dot_panel
  L5_2 = L2_2.dot_panel
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.delete
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = A0_2._prop_ui_data
  L4_2 = A1_2.EntityRuntimeID
  L3_2[L4_2] = nil
end
L2_1._remove_prop = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._prop_ui_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    if L5_2 ~= nil then
      L7_2 = L5_2
      L6_2 = L5_2.update_dot_panel_position
      L6_2(L7_2)
    end
  end
end
L2_1._update_all_dots_position = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = A0_2._dot_panel_cache
  L2_2 = #L2_2
  if 0 < L2_2 then
    L2_2 = A0_2._dot_panel_cache
    L3_2 = A0_2._dot_panel_cache
    L3_2 = #L3_2
    L1_2 = L2_2[L3_2]
    L2_2 = A0_2._dot_panel_cache
    L3_2 = A0_2._dot_panel_cache
    L3_2 = #L3_2
    L2_2[L3_2] = nil
  else
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = A0_2._binder
    L4_2 = L4_2.prefab_load_meta
    L4_2 = L4_2.Prefab
    L5_2 = A0_2._binder
    L5_2 = L5_2.root
    L5_2 = L5_2.transform
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.SceneObjClickHintDotPanel
    L6_2 = G
    L6_2 = L6_2.SceneObjClickHintDotPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L1_2 = L3_2
    L4_2 = L1_2
    L3_2 = L1_2.bind
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  return L1_2
end
L2_1._create_dot_panel = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._dot_panel_cache
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._recycle_dot_panel = L3_1
return L2_1
