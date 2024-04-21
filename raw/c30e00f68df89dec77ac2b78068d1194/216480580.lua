local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Layer.ChessRogueToastCellDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueToastCellDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "RogueAreaChangeHint"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ChessRogueModule
L3_1 = "UIText_RogueDLC_Cabinet"
L4_1 = "SpriteOutput/Rogue/Map/RogueNousGodRoomIcon.png"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueToastCellDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2.block_when_async_load = false
  A0_2._time = 0
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StoryModeChange
  L4_2 = A0_2._on_story_mode_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeToBattleTransitBegin
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.set_maze_main_page_toast
  L3_2 = A0_2
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.ChessRogueData
  L1_2 = L1_2.AreaInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetCurCellDataItem
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation
  L3_2 = L2_2
  L2_2 = L2_2.GetClip
  L4_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2.length
  A0_2._time = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.add_tick
  L2_2(L3_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L2_1.ChessRogueData
  L1_2 = L1_2.AreaInfo
  L1_2 = L1_2.IsInAeonRoom
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.cell_type_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_room_type
    L4_2 = L4_1
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = L2_1.ChessRogueData
    L1_2 = L1_2.AreaInfo
    L2_2 = L1_2
    L1_2 = L1_2.GetCurBlockTypeRow
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.cell_type_name
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L1_2.BlockTypeNameID
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.load_sprite_to
      L4_2 = A0_2._binder
      L4_2 = L4_2.img_room_type
      L5_2 = L1_2.BlockTypeIcon
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  L1_2 = L2_1.ChessRogueData
  L1_2 = L1_2.AreaInfo
  L1_2 = L1_2.CurAreaLayerDataItem
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.cell_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.LayerIndexID
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.cell_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._time
  L2_2 = L2_2 - A1_2
  A0_2._time = L2_2
  L2_2 = A0_2._time
  if L2_2 < 0 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L0_1._on_tick = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == true then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L0_1._on_story_mode_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_notify_finish = L5_1
return L0_1
