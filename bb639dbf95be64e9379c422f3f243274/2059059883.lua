local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.LightCone.LightConeDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeSubMenuPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeSubMenuPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeContainerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LightConeContainerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.AvatarUI3DPage"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeDetailPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_TitleType_Slash"
L2_1 = 1
L3_1 = 20
L4_1 = "Config/Manikin/LightCone/3DLightCone_Custom_Positions_Config.json"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LightConeDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._default_sub_menu_id = 1
  A0_2._equip_data = nil
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = A2_2 or nil
  if not A2_2 then
    L5_2 = A0_2._default_sub_menu_id
  end
  A0_2._default_sub_menu_id = L5_2
  A0_2._equip_data = A1_2
  A0_2._page_replace_listener = A3_2
  L6_2 = A0_2
  L5_2 = A0_2.fetch_ui3d
  L7_2 = G
  L7_2 = L7_2.AvatarUI3DPage
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._ui3d = L5_2
  A0_2._custom_bg = A4_2
  A0_2._wait_active_counter = 0
  L5_2 = A0_2._custom_bg
  if L5_2 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.GameCoreConfigLoader
    L5_2 = L5_2.LoadLightConeCustomPositionsConfig
    L6_2 = L4_1
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2.CustomPositionAnchor
    L6_2 = {}
    A0_2._3d_lightcone_custom_config = L6_2
    L6_2 = pairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    for L9_2, L10_2 in L6_2, L7_2, L8_2 do
      L11_2 = A0_2._3d_lightcone_custom_config
      L12_2 = CS
      L12_2 = L12_2.UnityEngine
      L12_2 = L12_2.Vector3
      L13_2 = L10_2.x
      L14_2 = L10_2.y
      L15_2 = L10_2.z
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2[L9_2] = L12_2
    end
  end
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.LightConeSubMenuPanel
  L4_2 = G
  L4_2 = L4_2.LightConeSubMenuPanelBinder
  L5_2 = A0_2._equip_data
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_light_cone_detail
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_upgrade
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_break
  L9_2 = A0_2._default_sub_menu_id
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  A0_2._equip_sub_menu_panel = L1_2
  L1_2 = A0_2._equip_sub_menu_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_async_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_sub_menu_load
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_zoom
  L4_2 = A0_2._on_btn_click_zoom
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_timer_callback
  L4_2 = 0.5
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UISet3DLightCone
  L4_2 = A0_2._set_3d_lightcone
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._equip_sub_menu_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_canvas_alpha
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._equip_sub_menu_panel
    L5_2 = L4_2
    L4_2 = L4_2.get_cur_tab_btn_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._equip_sub_menu_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_canvas_alpha
    L4_2 = 0.5
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_leave_zoom = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._equip_sub_menu_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_cur_selected_object
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2._is_can_to_zoom
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L0_1._is_can_to_zoom = L5_1
function L5_1(A0_2, A1_2, A2_2)
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
L0_1._on_in_control_press = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if 0.8 < A1_2 then
    L2_2 = A0_2._ui3d
    if L2_2 ~= nil then
      L2_2 = A0_2._ui3d
      L2_2 = L2_2.lightcone_panel
      L3_2 = L2_2
      L2_2 = L2_2.swipe_lightcone
      L4_2 = L3_1
      L4_2 = A1_2 * L4_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_right_stick_left = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if 0.8 < A1_2 then
    L2_2 = A0_2._ui3d
    if L2_2 ~= nil then
      L2_2 = A0_2._ui3d
      L2_2 = L2_2.lightcone_panel
      L3_2 = L2_2
      L2_2 = L2_2.swipe_lightcone
      L4_2 = -A1_2
      L5_2 = L3_1
      L4_2 = L4_2 * L5_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_right_stick_right = L5_1
function L5_1(A0_2)
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
L0_1._bind_easy_touch_event = L5_1
function L5_1(A0_2, A1_2)
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
L0_1._swipe_callback = L5_1
function L5_1(A0_2, A1_2)
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
L0_1._simple_tap_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._equip_sub_menu_panel
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_enter_zoom
    L3_2 = NavigationZoneType
    L3_2 = L3_2.Zone1
    L1_2(L2_2, L3_2)
    A0_2._is_need_force_set_lightcone_pos = false
    L1_2 = A0_2._ui3d
    L1_2 = L1_2.lightcone_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_is_locate_by_camera
    L1_2 = L1_2(L2_2)
    if L1_2 == true then
      L1_2 = A0_2._custom_bg
      if L1_2 == true then
        goto lbl_27
      end
    end
    L1_2 = A0_2._ui3d
    L1_2 = L1_2.lightcone_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_is_locate_by_camera
    L1_2 = L1_2(L2_2)
    if L1_2 ~= true then
      L1_2 = A0_2._custom_bg
      ::lbl_27::
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
    L2_2 = A0_2
    L1_2 = A0_2._bind_easy_touch_event
    L1_2(L2_2)
    L1_2 = A0_2._equip_sub_menu_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_ui3d
    L3_2 = A0_2._ui3d
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_sub_menu_load = L5_1
function L5_1(A0_2)
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
end
L0_1._setup_custom_bg = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_sub_menu
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "FadeOut"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_sub_menu
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "FadeIn"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._ui3d
  L1_2 = L1_2.lightcone_panel
  L1_2.is_force_hide = false
end
L0_1.anim_fade_in_sub_menu = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_sub_menu
  L2_2 = L1_2
  L1_2 = L1_2.ResetTrigger
  L3_2 = "FadeIn"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_sub_menu
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "FadeOut"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._ui3d
  L1_2 = L1_2.lightcone_panel
  L1_2.is_force_hide = true
end
L0_1.anim_fade_out_sub_menu = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_sub_menu
  L2_2 = L1_2
  L1_2 = L1_2.PlayInFixedTime
  L3_2 = "FadeOut"
  L4_2 = A0_2._binder
  L4_2 = L4_2.animator_sub_menu
  L5_2 = L4_2
  L4_2 = L4_2.GetLayerIndex
  L6_2 = "FadeOut"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.set_fade_out_state_sub_menu = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_light_cone_image
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "AvatarLightCone_Container_FadeOut"
  L1_2(L2_2, L3_2)
end
L0_1.anim_fade_out_lightcone = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_light_cone_image
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "AvatarLightCone_Container_FadeIn"
  L1_2(L2_2, L3_2)
end
L0_1.anim_fade_in_lightcone = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_zoom
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L2_1
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L0_1.on_click_tab = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._equip_sub_menu_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L2_2(L3_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.CoroutineUtils
    L2_2 = L2_2.InvokeAfterFrames
    L3_2 = 5
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2._ui3d
      if L0_3 ~= nil then
        L0_3 = A0_2._ui3d
        L0_3 = L0_3.lightcone_panel
        if L0_3 ~= nil then
          L0_3 = A0_2._ui3d
          L0_3 = L0_3.lightcone_panel
          L1_3 = L0_3
          L0_3 = L0_3.set_color_type
          L2_3 = CS
          L2_3 = L2_3.RPG
          L2_3 = L2_3.GameCore
          L2_3 = L2_3.LightCone3DColorType
          L2_3 = L2_3.Cold
          L0_3(L1_3, L2_3)
        end
      end
    end
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._ui3d
    if L2_2 == nil then
      return
    end
    L2_2 = A0_2._ui3d
    L3_2 = L2_2
    L2_2 = L2_2.show_avatar_main_page_tab
    L4_2 = G
    L4_2 = L4_2.AvatarMainPageSubType
    L4_2 = L4_2.LightCone
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._custom_bg
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._setup_custom_bg
      L2_2(L3_2)
    else
      L2_2 = A0_2._ui3d
      L3_2 = L2_2
      L2_2 = L2_2.set_lightcone_target_pos_by_camera
      L2_2(L3_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2._set_3d_lightcone
    L2_2(L3_2)
  else
    L2_2 = A0_2._ui3d
    if L2_2 ~= nil then
      L2_2 = A0_2._ui3d
      L2_2 = L2_2.lightcone_panel
      if L2_2 ~= nil then
        L2_2 = A0_2._ui3d
        L2_2 = L2_2.lightcone_panel
        L3_2 = L2_2
        L2_2 = L2_2.hide_lightcone
        L2_2(L3_2)
      end
    end
  end
end
L0_1._on_view_active_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._equip_data
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.LightCone.Zoom.LightConeZoomInPage"
  L3_2 = A0_2._equip_data
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
L0_1._on_btn_click_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._ui3d
  if L1_2 ~= nil then
    L1_2 = A0_2._ui3d
    L1_2 = L1_2.lightcone_panel
    L2_2 = L1_2
    L1_2 = L1_2.show_lightcone
    L3_2 = A0_2._equip_data
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_zoom_page_close = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  A0_2._equip_data = nil
  L1_2 = A0_2._custom_bg
  if L1_2 then
    L1_2 = A0_2._ui3d
    if L1_2 ~= nil then
      L1_2 = A0_2._ui3d
      L1_2 = L1_2.lightcone_panel
      L2_2 = L1_2
      L1_2 = L1_2.dispose_lightcone
      L1_2(L2_2)
    end
  end
end
L0_1._on_unload = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._equip_sub_menu_panel
  L2_2 = L1_2
  L1_2 = L1_2.async_bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_sub_menu
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.BelongAvatarID
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_single_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.BelongAvatarID
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._equip_data
  L1_2 = L1_2.BelongAvatarID
  if L1_2 ~= 0 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.AvatarModule
    L1_2 = L1_2.AllAvatars
    L2_2 = A0_2._equip_data
    L2_2 = L2_2.BelongAvatarID
    L1_2 = L1_2[L2_2]
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.AvatarBaseTypeExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2.Row
    L3_2 = L3_2.AvatarBaseType
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_avatar_type_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L1_1
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L2_2.BaseTypeText
    L6_2 = L6_2(L7_2)
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L1_2.Row
    L8_2 = L8_2.AvatarName
    L7_2, L8_2 = L7_2(L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L4_2 = A0_2
    L3_2 = A0_2.async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_avatar_type
    L6_2 = L2_2.BaseTypeIconSmall
    L3_2(L4_2, L5_2, L6_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_3d_lightcone
  L1_2(L2_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._ui3d
  if L1_2 ~= nil then
    L1_2 = A0_2._ui3d
    L2_2 = L1_2
    L1_2 = L1_2.show_avatar_main_page_tab
    L3_2 = G
    L3_2 = L3_2.AvatarMainPageSubType
    L3_2 = L3_2.LightCone
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._ui3d
    L1_2 = L1_2.lightcone_panel
    L1_2 = L1_2.is_force_hide
    if L1_2 then
      return
    end
    L1_2 = A0_2._ui3d
    L1_2 = L1_2.lightcone_panel
    L2_2 = L1_2
    L1_2 = L1_2.show_lightcone
    L3_2 = A0_2._equip_data
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
L0_1._set_3d_lightcone = L5_1
return L0_1
