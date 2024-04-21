local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.AdventureRoom.ChessRogueAdventureRoomHUDPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.AdventureRoom.ChessRogueAdventureRoomRayHUDPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.AdventureRoom.ChessRogueAdventureRoomTargetPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.AdventureRoom.Components.ChessRogueMazeHUDInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueMazeHUDInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowChessRogueHUDPanel
  L4_2 = A0_2._on_chess_rogue_show_adventure_room_hud_panel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowChessRogueRayHUDPanel
  L4_2 = A0_2._on_chess_rogue_show_adventure_room_ray_hud_panel
  L1_2(L2_2, L3_2, L4_2)
  A0_2._prefab_loaded = false
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._prefab_loaded
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.prefab_load_meta
    L2_2 = L2_2.Prefab
    L4_2 = A0_2
    L3_2 = A0_2.instantiate_object
    L5_2 = L2_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.root
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._instance = L3_2
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.ChessRogueAdventureRoomHUDPanel
    L6_2 = G
    L6_2 = L6_2.ChessRogueAdventureRoomHUDPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._hud_hint_panel = L3_2
    L3_2 = A0_2._hud_hint_panel
    L4_2 = L3_2
    L3_2 = L3_2.bind
    L5_2 = A0_2._instance
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.ChessRogueAdventureRoomTargetPanel
    L6_2 = G
    L6_2 = L6_2.ChessRogueAdventureRoomTargetPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._hud_target_panel = L3_2
    L3_2 = A0_2._hud_target_panel
    L4_2 = L3_2
    L3_2 = L3_2.bind
    L5_2 = A0_2._instance
    L3_2(L4_2, L5_2)
    A0_2._prefab_loaded = true
  end
  L2_2 = A0_2._hud_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.HintParam
  L4_2 = L4_2.Type
  L5_2 = A1_2.HintParam
  L5_2 = L5_2.GroupID
  L6_2 = A1_2.RoomInfo
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._hud_target_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.HintParam
  L4_2 = L4_2.Type
  L5_2 = A1_2.HintParam
  L5_2 = L5_2.GroupID
  L6_2 = A1_2.RoomInfo
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_chess_rogue_show_adventure_room_hud_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._prefab_loaded
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.prefab_load_meta
    L2_2 = L2_2.Prefab
    L4_2 = A0_2
    L3_2 = A0_2.instantiate_object
    L5_2 = L2_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.root
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._instance = L3_2
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.ChessRogueAdventureRoomRayHUDPanel
    L6_2 = G
    L6_2 = L6_2.ChessRogueAdventureRoomHUDPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._hud_hint_panel = L3_2
    L3_2 = A0_2._hud_hint_panel
    L4_2 = L3_2
    L3_2 = L3_2.bind
    L5_2 = A0_2._instance
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.ChessRogueAdventureRoomTargetPanel
    L6_2 = G
    L6_2 = L6_2.ChessRogueAdventureRoomTargetPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._hud_target_panel = L3_2
    L3_2 = A0_2._hud_target_panel
    L4_2 = L3_2
    L3_2 = L3_2.bind
    L5_2 = A0_2._instance
    L3_2(L4_2, L5_2)
    A0_2._prefab_loaded = true
  end
  L2_2 = A0_2._hud_hint_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.HintParam
  L4_2 = L4_2.GroupID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._hud_target_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.HintParam
  L4_2 = L4_2.Type
  L5_2 = A1_2.HintParam
  L5_2 = L5_2.GroupID
  L6_2 = A1_2.RoomInfo
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_chess_rogue_show_adventure_room_ray_hud_panel = L1_1
return L0_1
