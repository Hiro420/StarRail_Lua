local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RubikPuzzlePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.NotifyManager
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._owner = A1_2
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  A0_2._binder = L4_2
  A0_2.game_object_trans = nil
  A0_2._loaded = false
  A0_2.is_selected = false
  A0_2.visible = true
  A0_2.is_rotate = false
  A0_2._index = A3_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.is_selected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._owner = nil
  A0_2.game_object_trans = nil
  L1_2 = L0_1.super
  L1_2 = L1_2.dispose
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = G
  L3_2 = L3_2.ComponentExtensions
  L3_2 = L3_2.SafeGetCmpt
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Transform
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.game_object_trans = L3_2
  A0_2._token = A2_2
end
L0_1.bind_game_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._loaded
  if L2_2 then
    L2_2 = A0_2.game_object_trans
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2._get_camera_distance
      L2_2 = L2_2(L3_2)
      L4_2 = A0_2
      L3_2 = A0_2._setup_billboard_pos_rot_scale
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.late_tick = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsObjectNull
  L3_2 = A0_2.game_object_trans
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_MainCamera
  L3_2 = L2_2
  L2_2 = L2_2.WorldToScreenPoint
  L4_2 = A0_2.game_object_trans
  L4_2 = L4_2.position
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.RectTransformUtility
  L4_2 = L4_2.ScreenPointToLocalPointInRectangle
  L5_2 = A0_2._root_rect
  L5_2 = L5_2.transform
  L6_2 = L3_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_UICamera
  L8_2 = nil
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = A0_2._billboard_trans
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Vector3
  L8_2 = L5_2.x
  L9_2 = L5_2.y
  L10_2 = 0
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2.localPosition = L7_2
  L6_2 = A0_2._billboard_trans
  L7_2 = A0_2.game_object_trans
  L7_2 = L7_2.rotation
  L6_2.rotation = L7_2
end
L0_1._setup_billboard_pos_rot_scale = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsCsObjectNull
  L2_2 = A0_2.game_object_trans
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = A0_2.game_object_trans
  L1_2 = L1_2.position
  L2_2 = A0_2._camera_trans
  L2_2 = L2_2.position
  L1_2 = L1_2 - L2_2
  L2_2 = L1_2.magnitude
  return L2_2
end
L0_1._get_camera_distance = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_PageCanvas
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.GetComponent
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.RectTransform
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._root_rect = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_MainCamera
  L1_2 = L1_2.transform
  A0_2._camera_trans = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  A0_2._billboard_trans = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2.on_click
  L1_2(L2_2, L3_2, L4_2)
  A0_2._loaded = true
  L2_2 = A0_2
  L1_2 = A0_2.set_active
  L3_2 = A0_2.visible
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_select
  L3_2 = A0_2.is_selected
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIRubikRotateStart
  L4_2 = A0_2.on_rubik_rotate
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L3_2 = L3_2.gameObject
  L4_2 = A0_2._index
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  A0_2.is_rotate = A1_2
end
L0_1.on_rubik_rotate = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.is_rotate
  if L1_2 then
    return
  end
  L1_2 = L1_1.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIRubikOrderSelectClick
  L3_2 = A0_2.game_object_trans
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L1_2 = L1_2._mini_game_panel
  L2_2 = L1_2
  L1_2 = L1_2.unselect_all_billboard
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_select
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.on_click = L2_1
function L2_1(A0_2, A1_2)
  A0_2._index = A1_2
end
L0_1.set_index = L2_1
return L0_1
