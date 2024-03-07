local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.ChessBoard.ChessRogueModifierDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.ChessBoard.RogueNousModifierDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = "PlayNousValueUpdateAnim"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChessRogueModifierDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2
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
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._boardEventID = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ChessRogueModule
  L2_2 = L2_2.ChessRogueData
  L3_2 = L2_2
  L2_2 = L2_2.GetNousValueInfo
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._create_binder
    L5_2 = G
    L5_2 = L5_2.ChessRogueModifierDialogBinder
    L3_2 = L3_2(L4_2, L5_2)
    A0_2._binder = L3_2
  else
    L4_2 = A0_2
    L3_2 = A0_2._create_binder
    L5_2 = G
    L5_2 = L5_2.RogueNousModifierDialogBinder
    L3_2 = L3_2(L4_2, L5_2)
    A0_2._binder = L3_2
  end
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueDLCChessBoardEventExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._boardEventID
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_RogueDLC_Chessboard_ThemeEvent"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.ChessBoardEventName
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.ChessBoardEventDesc
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_setup_nous_value_view
  L2_2(L3_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_nous_value_slot
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.create_nous_value_panel
  L2_2 = A0_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_nous_value_slot
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._nous_value_panel = L1_2
  L1_2 = A0_2._nous_value_panel
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._nous_value_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_handle_update_notify
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._nous_value_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_update_anim_with_block
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L1_1._try_setup_nous_value_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  if A1_2 == L2_2 then
    L2_2 = A0_2._nous_value_panel
    if L2_2 ~= nil then
      L2_2 = A0_2._nous_value_panel
      L3_2 = L2_2
      L2_2 = L2_2.refresh_cur_value
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
end
L1_1._on_ui_animation_event = L2_1
return L1_1
