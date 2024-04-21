local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DCameraPanel"
L0_1(L1_1)
L0_1 = {}
L0_1.ShipSmall = 1
L0_1.ShipMedium = 2
L0_1.ShipLarge = 3
L0_1.VerticalShipSmall = 4
L0_1.VerticalShipMedium = 5
L0_1.VerticalShipLarge = 6
L1_1 = {}
L2_1 = L0_1.ShipSmall
L3_1 = {}
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = 0
L6_1 = 5.76
L7_1 = 3.84
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.FollowOffsetMin = L4_1
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = 0
L6_1 = 9.6
L7_1 = 2.4
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.FollowOffsetMax = L4_1
L1_1[L2_1] = L3_1
L2_1 = L0_1.ShipMedium
L3_1 = {}
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = 0
L6_1 = 7.92
L7_1 = 3.6
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.FollowOffsetMin = L4_1
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = 0
L6_1 = 13.44
L7_1 = 2.52
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.FollowOffsetMax = L4_1
L1_1[L2_1] = L3_1
L2_1 = L0_1.ShipLarge
L3_1 = {}
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = 0
L6_1 = 10
L7_1 = 6
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.FollowOffsetMin = L4_1
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = 0
L6_1 = 14
L7_1 = 4
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.FollowOffsetMax = L4_1
L1_1[L2_1] = L3_1
L2_1 = L0_1.VerticalShipSmall
L3_1 = {}
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = 0
L6_1 = 5.76
L7_1 = 1
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.FollowOffsetMin = L4_1
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = 0
L6_1 = 9.6
L7_1 = 1
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.FollowOffsetMax = L4_1
L1_1[L2_1] = L3_1
L2_1 = L0_1.VerticalShipMedium
L3_1 = {}
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = 0
L6_1 = 7.92
L7_1 = 1
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.FollowOffsetMin = L4_1
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = 0
L6_1 = 13.44
L7_1 = 1
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.FollowOffsetMax = L4_1
L1_1[L2_1] = L3_1
L2_1 = L0_1.VerticalShipLarge
L3_1 = {}
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = 0
L6_1 = 10
L7_1 = 1
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.FollowOffsetMin = L4_1
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = 0
L6_1 = 14
L7_1 = 1
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1.FollowOffsetMax = L4_1
L1_1[L2_1] = L3_1
L2_1 = {}
L2_1.Default = 1
L2_1.Smooth2Vertical = 11
L2_1.Vertical2Smooth = 11
L3_1 = {}
L3_1.ShipSmall = 0.25
L3_1.ShipMedium = 0.7
L3_1.ShipLarge = 6.9
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "ActivityAlleyPackUI3DPage"
L6_1 = G
L6_1 = L6_1.UI3DController
L4_1 = L4_1(L5_1, L6_1)
L5_1 = typeof
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.Client
L6_1 = L6_1.ActivityAlley
L6_1 = L6_1.AlleyPackComponent
L5_1 = L5_1(L6_1)
L4_1.CS_RPG_Client_ActivityAlley_AlleyPackComponent = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2.config
  L1_2.prefab_path = "UI/UI3D/Alley/AlleyPackScene.prefab"
  L1_2 = A0_2.config
  L1_2.environment_profile_path = "Stages/Outputs/Chapter02/EnviroProfile/Chap02_CloseView_ADV_X02_JinrenXiang_gameplay_Day.enviroProfile.asset"
  A0_2._is_forbid_op = false
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_camera
  L1_2(L2_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  A0_2._good_select_callback = nil
  A0_2._good_select_callback_self = nil
  A0_2._good_unselect_callback = nil
  A0_2._good_unselect_callback_self = nil
  A0_2._good_drag_start_callback = nil
  A0_2._good_drag_start_callback_self = nil
  A0_2._good_drag_end_callback = nil
  A0_2._good_drag_end_callback_self = nil
  A0_2._good_add_callback = nil
  A0_2._good_add_callback_self = nil
  A0_2._good_remove_callback = nil
  A0_2._good_remove_callback_self = nil
  A0_2._good_settle_callback = nil
  A0_2._good_settle_callback_self = nil
  A0_2._last_settled_component = nil
  A0_2._last_selected_component = nil
  A0_2._good_cancel_settle_callback = nil
  A0_2._good_cancel_settle_callback_self = nil
  L1_2 = A0_2._alley_pack_controller
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.clear_ui_area
    L1_2(L2_2)
    L1_2 = A0_2._alley_pack_controller
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
  end
  A0_2._alley_pack_controller = nil
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ActivityAlley
  L3_2 = L3_2.AlleyPackController
  L4_2 = "Root/NodeAlleyPackContent"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._alley_pack_controller = L1_2
  L1_2 = A0_2._alley_pack_controller
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
  L1_2 = A0_2._alley_pack_controller
  L2_2 = L1_2
  L1_2 = L1_2.RegisterGoodOperationCallback
  L3_2 = A0_2
  L4_2 = A0_2._on_good_select
  L5_2 = A0_2._on_good_drag_start
  L6_2 = A0_2._on_good_drag_end
  L7_2 = A0_2._on_good_add
  L8_2 = A0_2._on_good_remove
  L9_2 = A0_2._on_good_settle
  L10_2 = A0_2._on_good_cancel_settle
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/NodeAlleyPackContent"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_pack_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/NodeAlleyPackContent/DefaultPlane"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_default_plane = L1_2
end
L4_1._init_node = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DCameraPanel
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._camera_panel = L1_2
  L1_2 = {}
  A0_2._cameras = L1_2
  L1_2 = A0_2._cameras
  L2_2 = L0_1.ShipSmall
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.UI3DCamera
  L6_2 = "Root/VirtualCamera/ShipSmallVC"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._cameras
  L2_2 = L0_1.ShipMedium
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.UI3DCamera
  L6_2 = "Root/VirtualCamera/ShipMediumVC"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._cameras
  L2_2 = L0_1.ShipLarge
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.UI3DCamera
  L6_2 = "Root/VirtualCamera/ShipLargeVC"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._cameras
  L2_2 = L0_1.VerticalShipSmall
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.UI3DCamera
  L6_2 = "Root/VirtualCamera/VerticalShipSmallVC"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._cameras
  L2_2 = L0_1.VerticalShipMedium
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.UI3DCamera
  L6_2 = "Root/VirtualCamera/VerticalShipMediumVC"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._cameras
  L2_2 = L0_1.VerticalShipLarge
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.UI3DCamera
  L6_2 = "Root/VirtualCamera/VerticalShipLargeVC"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L1_2[L2_2] = L3_2
  L1_2 = A0_2._camera_panel
  L2_2 = L1_2
  L1_2 = L1_2.add_camera_state
  L3_2 = A0_2._cameras
  L4_2 = L0_1.ShipSmall
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._camera_panel
  L2_2 = L1_2
  L1_2 = L1_2.add_camera_state
  L3_2 = A0_2._cameras
  L4_2 = L0_1.ShipMedium
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._camera_panel
  L2_2 = L1_2
  L1_2 = L1_2.add_camera_state
  L3_2 = A0_2._cameras
  L4_2 = L0_1.ShipLarge
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._camera_panel
  L2_2 = L1_2
  L1_2 = L1_2.add_camera_state
  L3_2 = A0_2._cameras
  L4_2 = L0_1.VerticalShipSmall
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._camera_panel
  L2_2 = L1_2
  L1_2 = L1_2.add_camera_state
  L3_2 = A0_2._cameras
  L4_2 = L0_1.VerticalShipMedium
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._camera_panel
  L2_2 = L1_2
  L1_2 = L1_2.add_camera_state
  L3_2 = A0_2._cameras
  L4_2 = L0_1.VerticalShipLarge
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
end
L4_1._init_camera = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._alley_pack_controller
  L3_2 = L2_2
  L2_2 = L2_2.AddUIArea
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1.add_ui_area = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._alley_pack_controller
  L2_2 = L1_2
  L1_2 = L1_2.ClearUIArea
  L1_2(L2_2)
end
L4_1.clear_ui_area = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "[Alley] try_end_drag"
  L1_2(L2_2)
  L1_2 = A0_2._alley_pack_controller
  L2_2 = L1_2
  L1_2 = L1_2.TryEndDrag
  L1_2(L2_2)
end
L4_1.try_end_drag = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._alley_pack_controller
  L3_2 = L2_2
  L2_2 = L2_2.SwitchSelectTarget
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1.switch_select_target = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_good_unselect
  L1_2(L2_2)
end
L4_1.unselect_cur_good = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._alley_pack_controller
  L2_2 = L1_2
  L1_2 = L1_2.RemoveCurGood
  L1_2(L2_2)
end
L4_1.remove_cur_good = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._alley_pack_controller
  L2_2 = L1_2
  L1_2 = L1_2.RotateCurGood
  L1_2(L2_2)
end
L4_1.rotate_cur_good = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._alley_pack_controller
  L2_2 = L1_2
  L1_2 = L1_2.RotateShip
  L3_2 = 90
  L1_2(L2_2, L3_2)
end
L4_1.rotate_ship = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._alley_pack_controller
  L2_2 = L1_2
  L1_2 = L1_2.ClearShip
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_good_settle
  L1_2(L2_2)
end
L4_1.clear_ship = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._alley_pack_controller
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._alley_pack_controller
  L1_2 = L1_2.CurAlleyPackComponent
  return L1_2
end
L4_1.get_cur_select_good = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._last_settled_component
  return L1_2
end
L4_1.get_last_settled_good = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._last_selected_component
  return L1_2
end
L4_1.get_last_selected_good = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_alley_pack_ship_data
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.APCmptRef
    return L2_2
  end
end
L4_1.get_cur_ship_cmpt = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._alley_pack_controller
  L1_2 = L1_2.AllGoodDataDict
  return L1_2
end
L4_1.get_packing_good_data_dict = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._alley_pack_controller
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyPlacingShipInfo
  return L1_2(L2_2)
end
L4_1.get_alley_placing_ship = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._alley_pack_controller
  L1_2 = L1_2.ShipData
  return L1_2
end
L4_1.get_alley_pack_ship_data = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_loaded
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._alley_pack_controller
    L2_2.UseJoyStickInput = A1_2
  end
end
L4_1.enable_joystick = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_loaded
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ActivityAlley
    L2_2 = L2_2.AlleyPackController
    L2_2 = L2_2.AlleyJoyStickState
    L2_2 = L2_2.GoodOperation
    if A1_2 == L2_2 then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.Log
      L3_2 = "[Alley] switch_joy_stick_state : GoodOperation"
      L2_2(L3_2)
    end
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ActivityAlley
    L2_2 = L2_2.AlleyPackController
    L2_2 = L2_2.AlleyJoyStickState
    L2_2 = L2_2.UINavigation
    if A1_2 == L2_2 then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.Log
      L3_2 = "[Alley] switch_joy_stick_state : UINavigation"
      L2_2(L3_2)
    end
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ActivityAlley
    L2_2 = L2_2.AlleyPackController
    L2_2 = L2_2.AlleyJoyStickState
    L2_2 = L2_2.CursorSelection
    if A1_2 == L2_2 then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.Log
      L3_2 = "[Alley] switch_joy_stick_state : CursorSelection"
      L2_2(L3_2)
    end
    L2_2 = A0_2._alley_pack_controller
    L3_2 = L2_2
    L2_2 = L2_2.SwitchJoyStickState
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L4_1.switch_joy_stick_state = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_loaded
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._alley_pack_controller
    L1_2 = L1_2.CurJoyStickState
    return L1_2
  end
end
L4_1.get_joy_stick_state = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._alley_pack_controller
  L1_2 = L1_2.CursorPos
  return L1_2
end
L4_1.get_cursor_pos = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_forbid_op = A1_2
end
L4_1.set_is_forbid_op = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_forbid_op
  return L1_2
end
L4_1.is_forbid_op = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._alley_pack_controller
  L2_2 = L1_2
  L1_2 = L1_2.ResetCursorPos
  L1_2(L2_2)
end
L4_1.reset_cursor_pos = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._alley_pack_controller
  L2_2 = L1_2
  L1_2 = L1_2.ShowFinishOrderEffect
  L1_2(L2_2)
end
L4_1.show_finish_order_effect = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._alley_pack_controller
  if L2_2 ~= nil then
    L2_2 = A0_2._alley_pack_controller
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetEnabled
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L4_1.enable_pack_controller = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._cur_camera_id
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._cur_camera_id
  L2_2 = L1_1[L2_2]
  if L2_2 ~= nil then
    L3_2 = 1 - A1_2
    L4_2 = L2_2.FollowOffsetMin
    L3_2 = L3_2 * L4_2
    L4_2 = L2_2.FollowOffsetMax
    L4_2 = A1_2 * L4_2
    L3_2 = L3_2 + L4_2
    L4_2 = A0_2._cameras
    L5_2 = A0_2._cur_camera_id
    L4_2 = L4_2[L5_2]
    L5_2 = L4_2
    L4_2 = L4_2.set_orbital_transposer_follow_offset
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L4_1.set_camera_fov_ratio = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._ship_type = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_camera
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L4_1.switch_camera_by_ship_type = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 0
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AlleyShipType
  L3_2 = L3_2.Small
  if A1_2 == L3_2 then
    L2_2 = L3_1.ShipSmall
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AlleyShipType
    L3_2 = L3_2.Medium
    if A1_2 == L3_2 then
      L2_2 = L3_1.ShipMedium
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.AlleyShipType
      L3_2 = L3_2.Large
      if A1_2 == L3_2 then
        L2_2 = L3_1.ShipLarge
      end
    end
  end
  L3_2 = A0_2._node_default_plane
  L3_2 = L3_2.transform
  L3_2 = L3_2.localPosition
  L4_2 = A0_2._node_default_plane
  L4_2 = L4_2.transform
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector3
  L6_2 = L3_2.x
  L7_2 = L2_2
  L8_2 = L3_2.z
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.localPosition = L5_2
end
L4_1.reset_default_plane_pos_by_ship_type = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L2_1.Default
  L3_2 = A0_2._is_vertical_view
  if L3_2 ~= A1_2 then
    L3_2 = A0_2._is_vertical_view
    if L3_2 then
      L2_2 = L2_1.Vertical2Smooth
    else
      L2_2 = L2_1.Smooth2Vertical
    end
  end
  A0_2._is_vertical_view = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_camera
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L4_1.enable_vertical_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_vertical_view
  if L2_2 then
    L2_2 = A0_2._ship_type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AlleyShipType
    L3_2 = L3_2.Small
    if L2_2 == L3_2 then
      L2_2 = L0_1.VerticalShipSmall
      A0_2._cur_camera_id = L2_2
    else
      L2_2 = A0_2._ship_type
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.AlleyShipType
      L3_2 = L3_2.Medium
      if L2_2 == L3_2 then
        L2_2 = L0_1.VerticalShipMedium
        A0_2._cur_camera_id = L2_2
      else
        L2_2 = A0_2._ship_type
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.AlleyShipType
        L3_2 = L3_2.Large
        if L2_2 == L3_2 then
          L2_2 = L0_1.VerticalShipLarge
          A0_2._cur_camera_id = L2_2
        end
      end
    end
  else
    L2_2 = A0_2._ship_type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AlleyShipType
    L3_2 = L3_2.Small
    if L2_2 == L3_2 then
      L2_2 = L0_1.ShipSmall
      A0_2._cur_camera_id = L2_2
    else
      L2_2 = A0_2._ship_type
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.AlleyShipType
      L3_2 = L3_2.Medium
      if L2_2 == L3_2 then
        L2_2 = L0_1.ShipMedium
        A0_2._cur_camera_id = L2_2
      else
        L2_2 = A0_2._ship_type
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.AlleyShipType
        L3_2 = L3_2.Large
        if L2_2 == L3_2 then
          L2_2 = L0_1.ShipLarge
          A0_2._cur_camera_id = L2_2
        end
      end
    end
  end
  L2_2 = A0_2._cameras
  L3_2 = A0_2._cur_camera_id
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.active
  L2_2(L3_2)
  if not A1_2 then
    A1_2 = L2_1.Default
  end
  L2_2 = A0_2._camera_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_camera_blend
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1._refresh_camera = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2
  L3_2 = A0_2.sync_load_prefab
  L5_2 = A2_2
  L6_2 = A0_2._node_pack_root
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.ComponentExtensions
  L4_2 = L4_2.SafeGetCmpt
  L5_2 = L4_1.CS_RPG_Client_ActivityAlley_AlleyPackComponent
  L6_2 = L3_2
  L7_2 = ""
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2._alley_pack_controller
  L6_2 = L5_2
  L5_2 = L5_2.AddAlleyPackShip
  L7_2 = A1_2
  L8_2 = L4_2
  L9_2 = L3_2
  L10_2 = ""
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L4_1.load_ship = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._alley_pack_controller
  L2_2 = L1_2
  L1_2 = L1_2.RemoveShip
  L1_2(L2_2)
end
L4_1.remove_ship = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A1_2.Row
  L4_2 = L3_2.GoodsID
  L5_2 = A1_2.GoodsPropPath
  L6_2 = L3_2.SettleAudioEvent
  L7_2 = L3_2.RotateAudioEvent
  L8_2 = G
  L8_2 = L8_2.SuperDebug
  L8_2 = L8_2.Log
  L9_2 = "AlleyPack _load_shop_good"
  L8_2(L9_2)
  L9_2 = A0_2
  L8_2 = A0_2.sync_load_prefab
  L10_2 = L5_2
  L11_2 = A0_2._node_pack_root
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = L8_2.transform
  L10_2 = CS
  L10_2 = L10_2.UnityEngine
  L10_2 = L10_2.Vector3
  L11_2 = 10000
  L12_2 = 10000
  L13_2 = 10000
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L9_2.position = L10_2
  L9_2 = G
  L9_2 = L9_2.ComponentExtensions
  L9_2 = L9_2.SafeGetCmpt
  L10_2 = L4_1.CS_RPG_Client_ActivityAlley_AlleyPackComponent
  L11_2 = L8_2
  L12_2 = ""
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = A0_2._alley_pack_controller
  L11_2 = L10_2
  L10_2 = L10_2.AddAlleyGood
  L12_2 = L4_2
  L13_2 = L9_2
  L10_2(L11_2, L12_2, L13_2)
  if A2_2 then
    L11_2 = A0_2
    L10_2 = A0_2.switch_select_target
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    L11_2 = A0_2
    L10_2 = A0_2.begin_drag_target
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L10_2 = L9_2.AlleyPackGoodData
  if L10_2 ~= nil then
    L11_2 = L10_2.GoodDef
    L11_2.SettleAudioEvent = L6_2
    L11_2 = L10_2.GoodDef
    L11_2.RotateAudioEvent = L7_2
  end
  return L9_2
end
L4_1.load_shop_good = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._alley_pack_controller
  L3_2 = L2_2
  L2_2 = L2_2.BeginDragTarget
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L4_1.begin_drag_target = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._alley_pack_controller
  L3_2 = L2_2
  L2_2 = L2_2.TryAutoSettle
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L4_1.auto_settle = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._alley_pack_controller
  L4_2 = L3_2
  L3_2 = L3_2.IsInSelectGroup
  L5_2 = A1_2
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = false
  end
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.Log
    L4_2 = "[Alley] is_alley_good_settled, IsInSelectGroup true, UID "
    L5_2 = A1_2.RuntimeUniqueID
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L3_2 = A0_2._alley_pack_controller
    L3_2 = L3_2.CurGroupData
    L3_2 = L3_2.IsSettled
    return L3_2
  else
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.Log
    L4_2 = "[Alley] is_alley_good_settled, IsInSelectGroup false, UID "
    L5_2 = A1_2.RuntimeUniqueID
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
  end
  L3_2 = A1_2.IsSettled
  return L3_2
end
L4_1.is_alley_good_settled = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._good_select_callback = A1_2
  A0_2._good_select_callback_self = A2_2
end
L4_1.register_good_select_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._good_unselect_callback = A1_2
  A0_2._good_unselect_callback_self = A2_2
end
L4_1.register_good_unselect_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._good_drag_start_callback = A1_2
  A0_2._good_drag_start_callback_self = A2_2
end
L4_1.register_good_drag_start_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._good_drag_end_callback = A1_2
  A0_2._good_drag_end_callback_self = A2_2
end
L4_1.register_good_drag_end_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._good_add_callback = A1_2
  A0_2._good_add_callback_self = A2_2
end
L4_1.register_good_add_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._good_remove_callback = A1_2
  A0_2._good_remove_callback_self = A2_2
end
L4_1.register_good_remove_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._good_settle_callback = A1_2
  A0_2._good_settle_callback_self = A2_2
end
L4_1.register_good_settle_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._good_cancel_settle_callback = A1_2
  A0_2._good_cancel_settle_callback_self = A2_2
end
L4_1.register_good_cancel_settle_callback = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._last_selected_component = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._good_select_callback
  L4_2 = A0_2._good_select_callback_self
  L2_2(L3_2, L4_2)
end
L4_1._on_good_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._good_unselect_callback
  L3_2 = A0_2._good_unselect_callback_self
  L1_2(L2_2, L3_2)
end
L4_1._on_good_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._good_drag_start_callback
  L3_2 = A0_2._good_drag_start_callback_self
  L1_2(L2_2, L3_2)
end
L4_1._on_good_drag_start = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._good_drag_end_callback
  L3_2 = A0_2._good_drag_end_callback_self
  L1_2(L2_2, L3_2)
end
L4_1._on_good_drag_end = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._good_add_callback
  L3_2 = A0_2._good_add_callback_self
  L1_2(L2_2, L3_2)
end
L4_1._on_good_add = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._good_remove_callback
  L3_2 = A0_2._good_remove_callback_self
  L1_2(L2_2, L3_2)
end
L4_1._on_good_remove = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._last_settled_component = A1_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._good_settle_callback
  L4_2 = A0_2._good_settle_callback_self
  L2_2(L3_2, L4_2)
end
L4_1._on_good_settle = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._good_cancel_settle_callback
  L3_2 = A0_2._good_cancel_settle_callback_self
  L1_2(L2_2, L3_2)
end
L4_1._on_good_cancel_settle = L5_1
return L4_1
