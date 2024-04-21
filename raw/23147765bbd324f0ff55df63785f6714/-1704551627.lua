local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Miracle.Panels.RogueMiracleItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Miracle.Panels.RogueMiracleItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.RandomEvent.RogueCommonRepairMiracleDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueCommonRepairMiracleDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_RogueDLC_DialogEvent_Repair_Miracle"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueCommonRepairMiracleDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._display_data = nil
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._display_data = A1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.miracle_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._display_data
  L3_2 = L3_2.DisplayMiracleList
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_navigation
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_after_seconds_callback
  L2_2 = A0_2._rebuild_ray_cast_filter
  L3_2 = A0_2
  L5_2 = A0_2
  L4_2 = A0_2.get_native
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.GetEntranceBlockTime
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEventByClip
  L3_2 = A0_2._binder
  L3_2 = L3_2.rpg_fade_animation
  L3_2 = L3_2.EntranceAnimationClip
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._rebuild_ray_cast_filter
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.miracle_panel
  L2_2 = L1_2
  L1_2 = L1_2.rebuild_ray_cast_filter
  L1_2(L2_2)
end
L0_1._rebuild_ray_cast_filter = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_navigation = L2_1
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
  L1_2 = L1_2.miracle_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if A3_2 == nil then
    A3_2 = 1
  end
  if not (A3_2 < 1) then
    L4_2 = A0_2._binder
    L4_2 = L4_2.extra_mono_in_ctrl_tip
    L4_2 = #L4_2
    if not (A3_2 > L4_2) then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L4_2 = A0_2._binder
  L4_2 = L4_2.extra_mono_in_ctrl_tip
  L4_2 = L4_2[A3_2]
  L5_2 = L4_2
  L4_2 = L4_2.SetInControlTipKey
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.extra_key_map_hint_txt
  L4_2 = L4_2[A3_2]
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_extra_key_map_info = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 == nil then
    A2_2 = 1
  end
  if not (A2_2 < 1) then
    L3_2 = A0_2._binder
    L3_2 = L3_2.extra_mono_in_ctrl_tip
    L3_2 = #L3_2
    if not (A2_2 > L3_2) then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L3_2 = A0_2._binder
  L3_2 = L3_2.extra_mono_in_ctrl_tip
  L3_2 = L3_2[A2_2]
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.extra_key_map_hint_txt
  L3_2 = L3_2[A2_2]
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.set_extra_key_map_info_active = L2_1
return L0_1
