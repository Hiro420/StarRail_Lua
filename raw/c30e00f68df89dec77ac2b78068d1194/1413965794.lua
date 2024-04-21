local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameReSha.MiniGameReShaAssistantDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameReSha.MiniGameReShaAssistantImagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameReSha.MiniGameReShaAssistantImagePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MiniGameReShaAssistantDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MiniGameReShaAssistantDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._route_display_row = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._route_display_row
  L1_2 = L1_2.AssistantImagePanelPrefab
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.sync_load_prefab
    L4_2 = L1_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_image_panel_container_root
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.MiniGameReShaAssistantImagePanel
    L6_2 = G
    L6_2 = L6_2.MiniGameReShaAssistantImagePanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._panel_image = L3_2
    L3_2 = A0_2._panel_image
    L4_2 = L3_2
    L3_2 = L3_2.bind
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._route_display_row
  L3_2 = L3_2.HintText
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_image
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_image
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_SwitchSelect"
  L5_2 = "ActionGroup_Scroll"
  L6_2 = "Menu_Confirm"
  L7_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect_hint
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ReShaAssistantStopPlayingSFX
  L1_2(L2_2)
end
L0_1._on_start_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_navigation_target
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_image
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._panel_image
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
return L0_1
