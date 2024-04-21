local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Archive.LightConeArchive.LightConeArchiveDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.AvatarUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.LightConeArchive.LightConeFilterItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.LightConeArchive.LightConeFilterItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.ArchiveUnlockFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarClassFilter"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.ArchiveFilterItemListDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeArchiveDetailPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.InventorySortType
L2_1 = L2_1.Default
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.InventorySortType
L3_1 = L3_1.Rarity
L1_1[1] = L2_1
L1_1[2] = L3_1
L0_1._sort_type_list = L1_1
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
  L3_2 = L3_2.LightConeArchiveDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ArchiveUnlockFilter
  L1_2 = L1_2(L2_2)
  A0_2._unlock_filter = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AvatarClassFilter
  L1_2 = L1_2(L2_2)
  A0_2._class_filter = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._data = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ItemFactory
  L2_2 = L2_2.CreateEquipmentItemData
  L3_2 = A0_2._data
  L3_2 = L3_2.ID
  L2_2 = L2_2(L3_2)
  A0_2._equipment_data = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.InventorySortType
  L2_2 = L2_2.Default
  A0_2._cur_sort_type = L2_2
  A0_2._is_descend = true
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
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_filter
  L4_2 = A0_2._on_btn_filter
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_2d
  L4_2 = A0_2._on_btn_2d
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_3d
  L4_2 = A0_2._on_btn_3d
  L1_2(L2_2, L3_2, L4_2)
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
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_light_cone_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_custom_bg
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn
  L1_2(L2_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._equipment_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._equipment_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_light_cone_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_view_btn_group
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsUnlock
  L1_2(L2_2, L3_2)
end
L0_1._refresh_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._set_3d_lightcone
  L1_2(L2_2)
end
L0_1._on_zoom_page_close = L3_1
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
    L2_2 = L2_2.lightcone_panel
    L3_2 = L2_2
    L2_2 = L2_2.swipe_lightcone
    L4_2 = L1_1
    L4_2 = A1_2 * L4_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_right_stick_left = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if 0.8 < A1_2 then
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
L0_1._on_right_stick_right = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.Swipe
  L4_2 = A0_2._swipe_callback
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._bind_easy_touch_event = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._ui3d
  L2_2 = L2_2.lightcone_panel
  L3_2 = L2_2
  L2_2 = L2_2.swipe_lightcone
  L4_2 = A1_2.deltaPosition
  L4_2 = L4_2.x
  L4_2 = -L4_2
  L2_2(L3_2, L4_2)
end
L0_1._swipe_callback = L3_1
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
  L4_2 = L4_2.lightcone_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_custom_pos
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_3d_lightcone
  L4_2(L5_2)
end
L0_1._setup_custom_bg = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._ui3d
  L1_2 = L1_2.lightcone_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_lightcone
  L3_2 = A0_2._equipment_data
  L1_2(L2_2, L3_2)
end
L0_1._set_3d_lightcone = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ui3d
  L1_2 = L1_2.lightcone_panel
  L2_2 = L1_2
  L1_2 = L1_2.dispose_lightcone
  L1_2(L2_2)
  L1_2 = A0_2._unlock_filter
  L2_2 = L1_2
  L1_2 = L1_2.dtor
  L1_2(L2_2)
  L1_2 = A0_2._class_filter
  L2_2 = L1_2
  L1_2 = L1_2.dtor
  L1_2(L2_2)
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ItemFactory
  L2_2 = L2_2.CreateEquipmentItemData
  L3_2 = A0_2._data
  L3_2 = L3_2.ID
  L2_2 = L2_2(L3_2)
  A0_2._equipment_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_entry_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L3_1
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
  L2_2 = L2_2.lightcone_panel
  L3_2 = L2_2
  L2_2 = L2_2.hide_lightcone
  L2_2(L3_2)
end
L0_1._on_btn_2d = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ArchiveFilterItemListDialog
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = G
  L4_2 = L4_2.LightConeFilterItemPanel
  L5_2 = G
  L5_2 = L5_2.LightConeFilterItemPanelBinder
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.ArchiveType
  L6_2 = L6_2.LightCone
  L7_2 = A0_2._data
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_click_callback
  L4_2 = A0_2._on_entry_click
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_prefab_index
  L4_2 = 3
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_can_interact_when_entry_lock
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_exit_callback
  L4_2 = A0_2._on_filter_dialog_exit
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_filter
  L4_2 = A0_2._unlock_filter
  L5_2 = A0_2._class_filter
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_sort
  L4_2 = L0_1._sort_type_list
  L5_2 = A0_2._cur_sort_type
  L6_2 = A0_2._is_descend
  L7_2 = A0_2._sort
  L8_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.show
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_filter_dialog_show
  L2_2(L3_2)
end
L0_1._on_btn_filter = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_filter
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "DataBankFilterFadeIn"
  L1_2(L2_2, L3_2)
end
L0_1._on_filter_dialog_show = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_filter
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "DataBankFilterFadeOut"
  L1_2(L2_2, L3_2)
end
L0_1._on_filter_dialog_exit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_in_3d_mode
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._is_in_3d_mode = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_filter
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_2d
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_root = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_in_3d_mode
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._is_in_3d_mode = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_filter
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_2d
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_3d = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._cur_sort_type = A2_2
  A0_2._is_descend = A3_2
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = A1_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    if A0_3 == A1_3 then
      L2_3 = false
      return L2_3
    end
    L2_3 = A0_2._cur_sort_type
    L3_3 = CS
    L3_3 = L3_3.RPG
    L3_3 = L3_3.GameCore
    L3_3 = L3_3.InventorySortType
    L3_3 = L3_3.Default
    if L2_3 == L3_3 then
      L3_3 = A0_3
      L2_3 = A0_3.CompareTo
      L4_3 = A1_3
      L2_3 = L2_3(L3_3, L4_3)
      L3_3 = A0_2._is_descend
      if L3_3 then
        L3_3 = L2_3 == -1
        return L3_3
      else
        L3_3 = L2_3 == 1
        return L3_3
      end
    else
      L2_3 = A0_2._cur_sort_type
      L3_3 = CS
      L3_3 = L3_3.RPG
      L3_3 = L3_3.GameCore
      L3_3 = L3_3.InventorySortType
      L3_3 = L3_3.Rarity
      if L2_3 == L3_3 then
        L2_3 = A0_3.Row
        L2_3 = L2_3.Rarity
        L2_3 = #L2_3
        L3_3 = A1_3.Row
        L3_3 = L3_3.Rarity
        L3_3 = #L3_3
        if L2_3 == L3_3 then
          L5_3 = A0_3
          L4_3 = A0_3.CompareTo
          L6_3 = A1_3
          L4_3 = L4_3(L5_3, L6_3)
          L5_3 = L4_3 == -1
          return L5_3
        end
        L4_3 = L2_3 > L3_3
        L5_3 = A0_2._is_descend
        if L5_3 then
          return L4_3
        else
          L5_3 = not L4_3
          return L5_3
        end
      end
    end
    L2_3 = false
    return L2_3
  end
  L4_2(L5_2, L6_2)
end
L0_1._sort = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_navigation_target
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_in_3d_mode
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_root
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_exit
    L1_2(L2_2)
  end
end
L0_1._in_control_exit_click = L3_1
return L0_1
