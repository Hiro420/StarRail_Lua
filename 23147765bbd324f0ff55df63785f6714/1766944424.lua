local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaDetail.GachaLightConeDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaDetail.GachaLightConeInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaDetail.GachaLightConeInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.AvatarUI3DPage"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaLightConeDetailPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 20
L2_1 = "Config/Manikin/LightCone/3DLightCone_Custom_Positions_Config.json"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.GachaLightConeDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.EquipmentItemData
  L2_2 = L2_2.Clone
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._equipment_data = L2_2
  A0_2._custom_bg = true
  L3_2 = A0_2
  L2_2 = A0_2.fetch_ui3d
  L4_2 = G
  L4_2 = L4_2.AvatarUI3DPage
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._ui3d = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameCoreConfigLoader
  L2_2 = L2_2.LoadLightConeCustomPositionsConfig
  L3_2 = L2_1
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.CustomPositionAnchor
  L3_2 = {}
  A0_2._3d_lightcone_custom_config = L3_2
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._3d_lightcone_custom_config
    L9_2 = CS
    L9_2 = L9_2.UnityEngine
    L9_2 = L9_2.Vector3
    L10_2 = L7_2.x
    L11_2 = L7_2.y
    L12_2 = L7_2.z
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2[L6_2] = L9_2
  end
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 126
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_easy_touch_event
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UISet3DLightCone
  L4_2 = A0_2._set_3d_lightcone
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_single_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_single_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  A0_2._is_need_force_set_lightcone_pos = false
  L1_2 = A0_2._ui3d
  L1_2 = L1_2.lightcone_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_is_locate_by_camera
  L1_2 = L1_2(L2_2)
  if L1_2 == true then
    L1_2 = A0_2._custom_bg
    if L1_2 == true then
      goto lbl_22
    end
  end
  L1_2 = A0_2._ui3d
  L1_2 = L1_2.lightcone_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_is_locate_by_camera
  L1_2 = L1_2(L2_2)
  if L1_2 ~= true then
    L1_2 = A0_2._custom_bg
    ::lbl_22::
    if L1_2 ~= true then
      A0_2._is_need_force_set_lightcone_pos = true
    end
  end
  L1_2 = A0_2._custom_bg
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_custom_bg
    L1_2(L2_2)
  end
  L1_2 = A0_2._custom_bg
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._set_3d_lightcone
    L1_2(L2_2)
  end
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_light_cone_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_avatar_type_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._equipment_data
  if L1_2 ~= nil then
    L1_2 = A0_2.detail_panel
    if L1_2 == nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.GachaLightConeInfoPanel
  L4_2 = G
  L4_2 = L4_2.GachaLightConeInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.detail_panel = L1_2
  L1_2 = A0_2.detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_light_cone_detail
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_async_callback
  L3_2 = A0_2
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2.detail_panel
    L1_3 = L0_3
    L0_3 = L0_3.setup_view
    L2_3 = A0_2._equipment_data
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_light_cone_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._set_3d_lightcone
  L1_2(L2_2)
end
L0_1._on_zoom_page_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._equipment_data
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.LightCone.Zoom.LightConeZoomInPage"
  L3_2 = A0_2._equipment_data
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_close_callback
  L4_2 = A0_2._on_zoom_page_close
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._ui3d
  if L2_2 ~= nil then
    L2_2 = A0_2._ui3d
    L2_2 = L2_2.lightcone_panel
    L3_2 = L2_2
    L2_2 = L2_2.hide_lightcone
    L2_2(L3_2)
  end
end
L0_1._on_btn_click_zoom = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
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
L0_1._on_in_control_press = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if 0.8 < A1_2 then
    L2_2 = A0_2._ui3d
    if L2_2 ~= nil then
      L2_2 = A0_2._ui3d
      L2_2 = L2_2.lightcone_panel
      L3_2 = L2_2
      L2_2 = L2_2.swipe_lightcone
      L4_2 = L1_1
      L4_2 = A1_2 * L4_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_right_stick_left = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if 0.8 < A1_2 then
    L2_2 = A0_2._ui3d
    if L2_2 ~= nil then
      L2_2 = A0_2._ui3d
      L2_2 = L2_2.lightcone_panel
      L3_2 = L2_2
      L2_2 = L2_2.swipe_lightcone
      L4_2 = -A1_2
      L5_2 = L1_1
      L4_2 = L4_2 * L5_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_right_stick_right = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.Swipe
  L4_2 = A0_2._swipe_callback
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SimpleTap
  L4_2 = A0_2._simple_tap_callback
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._bind_easy_touch_event = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._ui3d
  if L2_2 ~= nil then
    L2_2 = A0_2._ui3d
    L2_2 = L2_2.lightcone_panel
    L3_2 = L2_2
    L2_2 = L2_2.swipe_lightcone
    L4_2 = A1_2.deltaPosition
    L4_2 = L4_2.x
    L4_2 = -L4_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._swipe_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._ui3d
  if L2_2 ~= nil then
    L2_2 = A0_2._ui3d
    L2_2 = L2_2.lightcone_panel
    L3_2 = L2_2
    L2_2 = L2_2.simple_tap_lightcone
    L4_2 = A0_2._on_simple_tap_lightcone
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._simple_tap_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = A0_2._3d_lightcone_custom_config
  L2_2 = L2_2.CameraFollow
  L1_2.followPoint = L2_2
  L2_2 = A0_2._3d_lightcone_custom_config
  L2_2 = L2_2.CameraLookAt
  L1_2.lookAtPoint = L2_2
  L2_2 = A0_2._ui3d
  L3_2 = L2_2
  L2_2 = L2_2.set_custom_bg
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._3d_lightcone_custom_config
  L2_2 = L2_2.LightConePosition
  L3_2 = A0_2._3d_lightcone_custom_config
  L3_2 = L3_2.LightConeEulerAngle
  L4_2 = A0_2._ui3d
  if L4_2 ~= nil then
    L4_2 = A0_2._ui3d
    L4_2 = L4_2.lightcone_panel
    L5_2 = L4_2
    L4_2 = L4_2.set_custom_pos
    L6_2 = L2_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._set_3d_lightcone
  L4_2(L5_2)
end
L0_1._setup_custom_bg = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._ui3d
  if L1_2 ~= nil then
    L1_2 = A0_2._ui3d
    L1_2 = L1_2.lightcone_panel
    L2_2 = L1_2
    L1_2 = L1_2.show_lightcone
    L3_2 = A0_2._equipment_data
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._is_need_force_set_lightcone_pos
    if L1_2 then
      L1_2 = A0_2._ui3d
      L1_2 = L1_2.lightcone_panel
      L2_2 = L1_2
      L1_2 = L1_2.force_set_pos
      L1_2(L2_2)
      A0_2._is_need_force_set_lightcone_pos = false
    end
  end
end
L0_1._set_3d_lightcone = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ui3d
  if L1_2 ~= nil then
    L1_2 = A0_2._ui3d
    L1_2 = L1_2.lightcone_panel
    L2_2 = L1_2
    L1_2 = L1_2.dispose_lightcone
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L3_1
return L0_1
