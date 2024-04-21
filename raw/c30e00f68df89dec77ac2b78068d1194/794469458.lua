local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Adventure.AdventureMissionHintPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureMissionHintPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Adventure.AdventureMissionHintDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AdventureMissionHintDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AdventureMissionHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._mission_panel_hint = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2._on_main_page_hide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIHideMissionHintDialog
  L4_2 = A0_2._on_main_page_hide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AdventureMissionHintPanel
  L4_2 = G
  L4_2 = L4_2.AdventureMissionHintPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mission_hint_panel = L1_2
  L1_2 = A0_2._mission_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_hint_panel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mission_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_callback
  L3_2 = A0_2._on_anim_end_callback
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UISetupViewMissionHintDialog
  L1_2(L2_2)
  L1_2 = A0_2._mission_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._mission_panel_hint
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mission_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.pause_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_view_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_main_page_hide = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.set_view_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._mission_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.continue_anim
  L2_2(L3_2)
end
L0_1._on_owner_active_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_anim_end_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIMissionHintDialogClosed
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
return L0_1
