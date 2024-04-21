local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.Toast.RogueToastAreaDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueToastAreaDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "RogueAreaChangeHint"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueToastAreaDialogBinder
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
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.PopupQueueManager
  L2_2 = L1_2
  L1_2 = L1_2.set_maze_main_page_toast
  L3_2 = A0_2
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  A0_2._time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueModule
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.MapData
  L3_2 = L1_2
  L2_2 = L1_2.GetCurrentRogueRoomTypeRow
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2.load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_room_type
    L6_2 = L2_2.RogueRoomTypeIcon
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.RogueRoomTypeTextmapID
    L3_2(L4_2, L5_2)
  end
  L4_2 = L1_2
  L3_2 = L1_2.GetProgressNum
  L3_2 = L3_2(L4_2)
  L5_2 = L1_2
  L4_2 = L1_2.GetBranchTotalNum
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_progress
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L3_2
  L8_2 = "/"
  L9_2 = L4_2
  L7_2 = L7_2 .. L8_2 .. L9_2
  L5_2(L6_2, L7_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_tick = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == true then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L0_1._on_story_mode_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_notify_finish = L2_1
return L0_1
