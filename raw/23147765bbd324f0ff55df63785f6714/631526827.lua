local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Relic.RelicDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.AvatarUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSubMenuPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSubMenuPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicDetailPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = {}
L3_1 = "ActionGroup_Return"
L2_1[1] = L3_1
L3_1 = {}
L4_1 = "ActionGroup_Select"
L5_1 = "ActionGroup_Return"
L3_1[1] = L4_1
L3_1[2] = L5_1
L1_1[1] = L2_1
L1_1[2] = L3_1
L2_1 = "UIText_TitleType_Slash"
L3_1 = CS
L3_1 = L3_1.UnityEngine
L3_1 = L3_1.Vector3
L4_1 = 0
L5_1 = 1.5
L6_1 = -10
L3_1 = L3_1(L4_1, L5_1, L6_1)
L4_1 = CS
L4_1 = L4_1.UnityEngine
L4_1 = L4_1.Vector3
L5_1 = 0
L6_1 = 1.5
L7_1 = -12.5
L4_1 = L4_1(L5_1, L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RelicDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
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
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AvatarUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_ui3d = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._relic = A1_2
  A0_2._default_menu_id = A2_2
  L4_2 = A3_2 or L4_2
  if not A3_2 then
    L4_2 = false
  end
  A0_2._use_custom_bg = L4_2
end
L0_1.init = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._sub_menu
    L3_2 = L2_2
    L2_2 = L2_2.set_canvas_group_alpha
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = A0_2._sub_menu
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
    L2_2 = A0_2._sub_menu
    L3_2 = L2_2
    L2_2 = L2_2.set_canvas_group_alpha
    L4_2 = 0.5
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_leave_zoom = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._sub_menu
  L3_2 = L2_2
  L2_2 = L2_2.get_cur_selected_tab_item
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2._is_can_to_zoom
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L0_1._is_can_to_zoom = L5_1
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarTakeOffRelicFinish
  L4_2 = A0_2._on_take_off_relic_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RelicLevelupFinish
  L4_2 = A0_2._on_level_up_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RelicSubMenuPanel
  L4_2 = G
  L4_2 = L4_2.RelicSubMenuPanelBinder
  L5_2 = A0_2._relic
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_detail
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_upgrade
  L8_2 = A0_2._default_menu_id
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._sub_menu = L1_2
  L1_2 = A0_2._sub_menu
  L2_2 = L1_2
  L1_2 = L1_2.reg_tab_select_call_back
  L3_2 = A0_2
  L4_2 = A0_2.refresh_short_cut_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.short_cut_hint_panel = L1_2
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._use_custom_bg
  if not L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = L3_1
  L1_2.followPoint = L2_2
  L2_2 = L4_1
  L1_2.lookAtPoint = L2_2
  L2_2 = A0_2._avatar_ui3d
  L3_2 = L2_2
  L2_2 = L2_2.set_custom_bg
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_ui3d_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.short_cut_hint_panel
  if L2_2 == nil then
    return
  end
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = 1
  end
  L4_2 = A0_2
  L3_2 = A0_2.setup_short_cut_hint_panel
  L5_2 = L1_1[L2_2]
  L3_2(L4_2, L5_2)
end
L0_1.refresh_short_cut_hint = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.icon_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_rarity_bg
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.icon_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._relic
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._sub_menu
  L2_2 = L1_2
  L1_2 = L1_2.async_bind_with_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_sub_menu
  L4_2 = A0_2
  L5_2 = A0_2._init_ui_navigation
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_sub_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._relic
  L3_2 = L3_2.BelongAvatarID
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_page_single_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._relic
  L3_2 = L3_2.BelongAvatarID
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._relic
  L1_2 = L1_2.BelongAvatarID
  if L1_2 ~= 0 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.AvatarModule
    L2_2 = L1_2
    L1_2 = L1_2.GetAvatar
    L3_2 = A0_2._relic
    L3_2 = L3_2.BelongAvatarID
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L1_2.Row
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarBaseTypeExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2.AvatarBaseType
    L3_2 = L3_2(L4_2)
    L4_2 = L2_2.AvatarName
    L5_2 = L3_2.BaseTypeText
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_sub_title
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = L2_1
    L9_2 = G
    L9_2 = L9_2.TextmapStatic
    L9_2 = L9_2.GetText
    L10_2 = L5_2
    L9_2 = L9_2(L10_2)
    L10_2 = G
    L10_2 = L10_2.TextmapStatic
    L10_2 = L10_2.GetText
    L11_2 = L4_2
    L10_2, L11_2 = L10_2(L11_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L7_2 = A0_2
    L6_2 = A0_2.async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.img_avatar_type
    L9_2 = L3_2.BaseTypeIconSmall
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._set_sub_title = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_sub_menu
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "FadeIn"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_sub_menu
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "FadeOut"
    L2_2(L3_2, L4_2)
  end
end
L0_1.toggle_sub_menu_and_relic = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_sub_title
  L1_2(L2_2)
  L1_2 = A0_2._sub_menu
  L2_2 = L1_2
  L1_2 = L1_2.refresh
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_AvatarRelic_ToastTakeOff"
  L1_2(L2_2, L3_2)
end
L0_1._on_take_off_relic_finish = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.icon_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._relic
  L1_2(L2_2, L3_2)
end
L0_1._on_level_up_finish = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L5_1
return L0_1
