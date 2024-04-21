local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PhotoGraphModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.PhotoGraphSettingItemType
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.PhotoGraphSettingDisplayOptionType
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.PhotoGraphModeType
L4_1 = "PhotoGraph_Title_Setting"
L5_1 = "UIText_PhotoGraph_Forbid_Setting"
L6_1 = "SpriteOutput/CameraIcon/CrameraTab/TabOption.png"
L7_1 = G
L7_1 = L7_1.Class
L8_1 = "PhotoGraphSettingPanel"
L9_1 = G
L9_1 = L9_1.TabItem
L7_1 = L7_1(L8_1, L9_1)
function L8_1(A0_2)
  local L1_2
  A0_2._selected_object = nil
  A0_2._is_in_steer = false
end
L7_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._selected_object = nil
  A0_2._check_steer_entity = nil
end
L7_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.get_cur_photograph_mode
  L1_2 = L1_2()
  L2_2 = L0_1.PhotoGraphSettings
  L3_2 = L2_2
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  A0_2._setting_data = L3_2
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L3_2 = L3_2.Value
    L4_2 = L3_2.Config
    L4_2 = L4_2.DisplayOptionType
    L6_2 = A0_2
    L5_2 = A0_2._check_display_option_satisfy
    L7_2 = L4_2
    L8_2 = L1_2
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    if L5_2 then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = A0_2._setting_data
      L7_2 = L3_2
      L5_2(L6_2, L7_2)
    end
    L5_2 = L3_2.SettingType
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.PhotoGraphSettingItemType
    L6_2 = L6_2.BodyBackFace
    if L5_2 == L6_2 then
      L5_2 = L3_2.IsEnable
      A0_2._body_back_face_option_enable = L5_2
    end
  end
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetSettingData
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.PhotoGraphSettingItemType
  L5_2 = L5_2.LookAtCamera
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.IsEnable
  A0_2._local_look_at_camera = L4_2
end
L7_1.load_setting_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_panel
  L1_2(L2_2)
end
L7_1._on_added = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_title_icon
  L4_2 = L6_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L7_1._on_select = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.CS
    L1_2 = L1_2.EventSystem
    L1_2 = L1_2.current
    L1_2 = L1_2.currentSelectedGameObject
    A0_2._selected_object = L1_2
  end
end
L7_1._on_unselect = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._selected_object
  if L1_2 then
    L1_2 = A0_2._selected_object
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_setting_info_list
  L2_2 = L1_2
  L1_2 = L1_2.get_panel_by_index
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L7_1.get_first_selected_object = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_setting_info_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._setting_data
  L4_2 = A0_2._on_setting_info_state_change
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_setting_navigation
  L1_2(L2_2)
end
L7_1._refresh = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._setting_data
  L1_2 = #L1_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_setting_info_list
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L8_2 = L7_2._binder
      if L8_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L2_2
        L10_2 = L7_2._binder
        L10_2 = L10_2.btn_root
        L8_2(L9_2, L10_2)
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.setup_navigation
  L5_2 = L2_2
  L6_2 = NavigationType
  L6_2 = L6_2.Vertical
  L3_2(L4_2, L5_2, L6_2)
end
L7_1._set_setting_navigation = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = "SpriteOutput/CameraIcon/CrameraTab/TabOption.png"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon_unselect
  L4_2 = "SpriteOutput/CameraIcon/CrameraTab/TabOption.png"
  L1_2(L2_2, L3_2, L4_2)
end
L7_1._setup_tab_panel = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2._check_display_option_satisfy
  L6_2 = A1_2.Config
  L6_2 = L6_2.DisplayOptionType
  L7_2 = G
  L7_2 = L7_2.PhotoGraphUtils
  L7_2 = L7_2.get_cur_photograph_mode
  L7_2 = L7_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.UIPileToastMessageTextID
    L6_2 = L5_1
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = A1_2.SettingType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.PhotoGraphSettingItemType
  L5_2 = L5_2.LookAtCamera
  if L4_2 == L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2._update_look_at_camera_option
    L6_2 = A3_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = A1_2.SettingType
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.PhotoGraphSettingItemType
    L5_2 = L5_2.BodyBackFace
    if L4_2 == L5_2 then
      L5_2 = A0_2
      L4_2 = A0_2._update_body_back_face_option
      L6_2 = A3_2
      L4_2(L5_2, L6_2)
    else
      L4_2 = L0_1
      L5_2 = L4_2
      L4_2 = L4_2.UpdateSettingData
      L6_2 = A1_2.SettingType
      L7_2 = A2_2
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L7_1._on_setting_info_state_change = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = L2_1.All
  if A1_2 == L3_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = L2_1.FirstPerspectiveOnly
  if A1_2 == L3_2 then
    L3_2 = L3_1.CommonShotFirstPerson
    L3_2 = A2_2 == L3_2
    return L3_2
  end
  L3_2 = L2_1.ThirdPerspectiveOnly
  if A1_2 == L3_2 then
    L3_2 = L3_1.CommonShotThirdPerson
    L3_2 = A2_2 == L3_2
    return L3_2
  end
  L3_2 = false
  return L3_2
end
L7_1._check_display_option_satisfy = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._body_back_face_option_enable
  L2_2 = not L2_2
  A0_2._body_back_face_option_enable = L2_2
  L3_2 = A1_2
  L2_2 = A1_2.set_enable_display_manual
  L4_2 = A0_2._body_back_face_option_enable
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_is_in_steer
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._process_next_body_back
    L2_2(L3_2)
  else
    A0_2._is_waiting_steer_finish = true
  end
end
L7_1._update_body_back_face_option = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._local_look_at_camera
  L2_2 = not L2_2
  A0_2._local_look_at_camera = L2_2
  L3_2 = A1_2
  L2_2 = A1_2.set_enable_display_manual
  L4_2 = A0_2._local_look_at_camera
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._is_in_steer
  if not L2_2 then
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.UpdateSettingData
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.PhotoGraphSettingItemType
    L4_2 = L4_2.LookAtCamera
    L5_2 = A0_2._local_look_at_camera
    L2_2(L3_2, L4_2, L5_2)
  end
end
L7_1._update_look_at_camera_option = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_check_steer_entity
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.PhotoGraphUtils
  L2_2 = L2_2.is_in_steer
  L3_2 = L1_2
  L2_2 = L1_2 ~= nil and L2_2
  return L2_2
end
L7_1._check_is_in_steer = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._check_steer_entity
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_GamePhaseManager
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentPhase
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.CurrentPlayingTeamMember
      A0_2._check_steer_entity = L2_2
    end
  end
  L1_2 = A0_2._check_steer_entity
  return L1_2
end
L7_1._get_check_steer_entity = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._tick_steer_finish
  L1_2(L2_2)
end
L7_1._on_tick = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._check_is_in_steer
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2._is_in_steer
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_steer_finish
      L2_2(L3_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._check_is_in_steer
  L2_2 = L2_2(L3_2)
  A0_2._is_in_steer = L2_2
end
L7_1._tick_steer_finish = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_waiting_steer_finish
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._process_next_body_back
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._process_set_face_option
    L1_2(L2_2)
  end
end
L7_1._on_steer_finish = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_look_at_enabled
  L3_2 = A0_2._local_look_at_camera
  L1_2(L2_2, L3_2)
end
L7_1._process_set_face_option = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.UpdateSettingData
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.PhotoGraphSettingItemType
  L4_2 = L4_2.LookAtCamera
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L7_1._set_look_at_enabled = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  A0_2._is_waiting_steer_finish = false
  L2_2 = A0_2
  L1_2 = A0_2._set_body_back_face_option
  L1_2(L2_2)
  L1_2 = A0_2._body_back_face_option_enable
  A0_2.body_back_face_option_enable_origin = L1_2
end
L7_1._process_next_body_back = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._body_back_face_option_enable
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2.body_back_face_option_enable_origin
  L2_2 = A0_2._body_back_face_option_enable
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._set_look_at_enabled
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = L0_1
    L2_2 = L1_2
    L1_2 = L1_2.UpdateSettingData
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.PhotoGraphSettingItemType
    L3_2 = L3_2.BodyBackFace
    L4_2 = A0_2._body_back_face_option_enable
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._process_set_face_option
    L1_2(L2_2)
  end
end
L7_1._set_body_back_face_option = L8_1
return L7_1
