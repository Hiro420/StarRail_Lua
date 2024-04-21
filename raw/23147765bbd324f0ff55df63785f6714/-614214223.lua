local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AvatarSkin.AvatarSkinMainPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkinMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AvatarSkinMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AvatarUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_ui3d = L1_2
  A0_2._allow_camera_zoom_rotation_by_mouse = true
  A0_2._allow_camera_zoom_by_gamepad = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._mode = A1_2
  L3_2 = A0_2._mode
  L4_2 = SkinPageMode
  L4_2 = L4_2.Activity
  if L3_2 == L4_2 then
    A0_2._skin_id = A2_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarSkinExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._skin_id
    L3_2 = L3_2(L4_2)
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GetAvatar
    L6_2 = L3_2.AvatarID
    L4_2 = L4_2(L5_2, L6_2)
    A0_2._avatar_data = L4_2
    L4_2 = A0_2._avatar_data
    if L4_2 == nil then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.AvatarData
      L4_2 = L4_2.CreateGachaData
      L5_2 = L3_2.AvatarID
      L4_2 = L4_2(L5_2)
      A0_2._avatar_data = L4_2
    end
    L4_2 = A0_2._avatar_ui3d
    L5_2 = L4_2
    L4_2 = L4_2.setup_detail_page_type
    L6_2 = G
    L6_2 = L6_2.AvatarDetailPageType
    L6_2 = L6_2.Shop
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._avatar_ui3d
    L4_2 = L4_2.config
    L4_2.is_async_load = false
  else
    A0_2._avatar_data = A2_2
    L3_2 = A0_2._avatar_data
    L3_2 = L3_2.DressedSkinID
    A0_2._skin_id = L3_2
  end
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mode
  L2_2 = SkinPageMode
  L2_2 = L2_2.Activity
  if L1_2 == L2_2 then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.switch_avatar
    L3_2 = A0_2._avatar_data
    L4_2 = A0_2._skin_id
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.show_avatar_main_page_tab
    L3_2 = G
    L3_2 = L3_2.AvatarMainPageSubType
    L3_2 = L3_2.AvatarDetail
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._btn_back_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._btn_empty_close_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_content
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 153
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1.refreh_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.content_panel
    L3_2 = L2_2
    L2_2 = L2_2.get_zoom2_selected_object
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2 ~= nil
    return L3_2
  end
end
L0_1._is_can_to_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._close_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._close_callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._close_callback
      L2_2 = A0_2._close_callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_unload = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._close_callback = A1_2
  A0_2._close_callback_self = A2_2
end
L0_1.register_close_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._avatar_data = A1_2
  A0_2._skin_id = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.skin_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._avatar_data
  L6_2 = L5_2
  L5_2 = L5_2.GetSkinName
  L7_2 = A0_2._skin_id
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_name
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.AvatarName
  L3_2(L4_2, L5_2)
end
L0_1.refresh_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.is_hiding_ui
  L3_2 = not A1_2
  if L2_2 == L3_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_empty_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_empty_close
  L2_2.IsForbidButtonCheck = A1_2
  L2_2 = not A1_2
  A0_2.is_hiding_ui = L2_2
end
L0_1.show_content = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.enable_free_look_zoom
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_mode
  L3_2 = A0_2._mode
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_refresh_ui
  L3_2 = A0_2.refresh_data
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_name
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.AvatarName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._skin_id
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.is_hiding_ui
  if L1_2 == true then
    L2_2 = A0_2
    L1_2 = A0_2.show_content
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._btn_back_onclick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_content
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._btn_empty_close_onclick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._btn_back_onclick
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
return L0_1
