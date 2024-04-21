local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportMainPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransport"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TutorialAlleyTransportMainPage"
L2_1 = G
L2_1 = L2_1.AlleyTransportMainPage
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
L2_1 = 101
function L3_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.AlleyTransport
  L1_2.is_use_by_tutorial = true
  A0_2._is_first_tutorial = false
  A0_2._appoint_shop_id = 101
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = tonumber
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    A0_2._appoint_shop_id = L2_2
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAlleyMapIDByShopID
  L4_2 = A0_2._appoint_shop_id
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.AlleyTransport
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetAlleyLayerByMapID
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.appoint_show_layer_by_mission = L4_2
  L3_2 = A0_2._appoint_shop_id
  L4_2 = L2_1
  L3_2 = L3_2 == L4_2
  A0_2._is_first_tutorial = L3_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.super
  L1_2 = L1_2._setup_view
  L2_2 = A0_2
  L1_2(L2_2)
  A0_2._is_trigger_touch_buff = false
  A0_2._is_trigger_finish_draw_line = false
  L1_2 = A0_2._is_first_tutorial
  if L1_2 then
    L1_2 = A0_2._alley_transport_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.setup_is_first_tutorial
    L3_2 = A0_2._is_first_tutorial
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.super
  L1_2 = L1_2._on_load
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = A0_2._is_first_tutorial
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_edit_function_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportConfirmDialog"
  L3_2 = A0_2
  L4_2 = "UIText_ActivityAlley_Airline_Tutorial_CloseTips"
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_back_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.StopAllUIMenuBGM
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.exit_transport_performance
  L3_2(L4_2)
  L3_2 = A0_2._cur_show_layer
  L4_2 = G
  L4_2 = L4_2.AlleyTransport
  L4_2 = L4_2.max_show_layer
  if L3_2 <= L4_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L4_2 = A0_2._cur_show_layer
    L3_2.AlleyTransportShowLayer = L4_2
  end
  L3_2 = G
  L3_2 = L3_2.AlleyTransport
  L3_2.cur_show_layer = 1
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MouseInputController
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.SetCursorSprite
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.AlleyTransport
  L3_2.is_use_by_tutorial = false
  L3_2 = G
  L3_2 = L3_2.AlleyTransport
  L3_2.is_use_by_special_transport = false
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.TutorialLevelGraphEnd
  L5_2 = G
  L5_2 = L5_2.TutorialManager
  L6_2 = L5_2
  L5_2 = L5_2.get_running_tutorial_id
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_dispose = L3_1
return L0_1
