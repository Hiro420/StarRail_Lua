local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.TravelBrochureDirectoryPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.TravelBrochureModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TravelBrochureDirectoryPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TravelBrochureDirectoryPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_EnterWithFastForward
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._is_invitation_on = false
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L2_2 = L1_2
  L1_2 = L1_2.EMIGHMDIJIL
  L1_2(L2_2)
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.override_transition_anim_type
  L3_2 = "TravelBrochurePage"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UITransitionAnimType
  L4_2 = L4_2.Morph
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.override_transition_anim_type
  L3_2 = "TravelBrochurePasterCollectPage"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UITransitionAnimType
  L4_2 = L4_2.Morph
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_invitation_off
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_invitation
  L4_2 = A0_2._on_btn_invitation
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_collect
  L4_2 = A0_2._on_btn_collect
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_directory
  L2_2 = L1_2
  L1_2 = L1_2.register_item_click_callback
  L3_2 = A0_2._on_directory_item_clicked
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 164
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "TravelBrochurePasterCollectReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_collect_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = "TravelBrochureDirectoryPage_FadeOut2"
    return L1_2
  end
  L1_2 = ""
  return L1_2
end
L1_1.get_custom_fade_out_anim_name = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.DataInited
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaAction
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_setup_view
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_directory
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_collect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._can_use_paster
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._do_setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetUnlockedDiaryDatas
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.CanPaste
    if L7_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L1_1._can_use_paster = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_invitation_on
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_directory
    L2_2 = L1_2
    L1_2 = L1_2.has_directory
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._on_btn_invitation
      L1_2(L2_2)
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_directory
  L1_2 = L1_2._is_doing_snap
  if L1_2 then
    return
  end
  L1_2 = A0_2._is_invitation_on
  L1_2 = not L1_2
  A0_2._is_invitation_on = L1_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.nodes_invitation_on
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._is_invitation_on
    L6_2(L7_2, L8_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.nodes_invitation_off
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._is_invitation_on
    L8_2 = not L8_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_invitation
  L2_2 = A0_2._is_invitation_on
  L2_2 = not L2_2
  L1_2.interactable = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_collect
  L2_2 = A0_2._is_invitation_on
  L2_2 = not L2_2
  L1_2.interactable = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_directory
  L2_2 = L1_2
  L1_2 = L1_2.pause_animation
  L3_2 = A0_2._is_invitation_on
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_cut_hint
  L1_2(L2_2)
end
L1_1._on_btn_invitation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.TravelBrochure.TravelBrochurePage"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._on_directory_item_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_directory
  L1_2 = L1_2._is_doing_snap
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.TravelBrochure.TravelBrochurePasterCollectPage"
  L1_2(L2_2)
end
L1_1._on_btn_collect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_invitation_on
  if L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_directory
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_short_cut_hint
  L3_2(L4_2)
end
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_invitation_on
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 8
    L4_2 = A0_2._binder
    L4_2 = L4_2.scroll_rect_invitation
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = 164
    L1_2(L2_2, L3_2)
  end
end
L1_1._refresh_short_cut_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close
  L1_2(L2_2)
end
L1_1._in_control_exit_click = L2_1
return L1_1
