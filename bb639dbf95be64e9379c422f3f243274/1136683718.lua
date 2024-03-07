local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.WorldMapPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Map.WorldMapPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.MapUI3DPage"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WorldMapPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_ExitWithCut
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.WorldMapPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.MapUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._map_ui3d = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  A0_2._callback_obj = A1_2
  A0_2._callback_func = A2_2
  A0_2._cur_show_world_id = A3_2
  L5_2 = A4_2 or L5_2
  if not A4_2 then
    L5_2 = 0
  end
  A0_2._story_line_id = L5_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._map_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.enable_decorate_lines
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._map_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.enable_destinations
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._world_map_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_mono_call_back
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MonoLuaCallbackTick
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.SetLuaCallback
  L4_2 = A0_2._custom_tick
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._add_mono_call_back = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_MapSelect"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.WorldMapPanel
  L4_2 = G
  L4_2 = L4_2.WorldMapPanelBinder
  L5_2 = A0_2._map_ui3d
  L6_2 = A0_2._cur_show_world_id
  L7_2 = A0_2._story_line_id
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._world_map_panel = L1_2
  L1_2 = A0_2._world_map_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_world_map
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._world_map_panel
  L2_2 = L1_2
  L1_2 = L1_2.reg_world_map_click_call_back
  L3_2 = A0_2
  L4_2 = A0_2._on_world_map_item_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "PanelSwitch_fadeIn"
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._show_regional_detail
    L0_3(L1_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.animation_root
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = "PanelSwitch_fadeOut"
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "PanelSwitch_fadeIn"
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_regional_detail_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  A0_2._click_world_id = A1_2
end
L0_1._on_world_map_item_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._map_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.is_loaded
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._map_ui3d
    L1_2 = L1_2.is_init_finish
    if L1_2 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._world_map_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_can_exit
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._world_map_panel
  L2_2 = L1_2
  L1_2 = L1_2.tick_highlight
  L1_2(L2_2)
end
L0_1._custom_tick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._world_map_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_can_exit
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback_func
  if L1_2 then
    L1_2 = A0_2._click_world_id
    if L1_2 then
      L1_2 = A0_2._callback_func
      L2_2 = A0_2._callback_obj
      L3_2 = A0_2._click_world_id
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_dispose = L1_1
return L0_1
