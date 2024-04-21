local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.StoryLine.ActivityClockParkStoryLineDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityClockParkStoryLineDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityClockParkModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.ClockParkGameStateEnum
L3_1 = 1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkStoryLineDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  A0_2._enter_chapter_info = A1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close_empty
  L4_2 = A0_2._on_close_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1.ClockParkInstance
  L1_2 = L1_2.ScriptInfo
  A0_2._script_info = L1_2
  L1_2 = A0_2._script_info
  L1_2 = L1_2.ScriptID
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_normal
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L3_1
  L4_2 = L1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_new_player
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L3_1
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = L3_1
  if L1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_new_player
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._script_info
    L5_2 = A0_2._enter_chapter_info
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_normal
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._script_info
    L5_2 = A0_2._enter_chapter_info
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetPlayingClockParkScriptData
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._script_info
  L3_2 = L3_2.ChapterInfo
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_ClockPark_Script_Story_Tip_1"
  L7_2 = L2_2.MaxChapterCount
  L8_2 = L3_2.ChapterIndex
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_close_btn_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.ClockParkInstance
  L1_2 = L1_2.CurGameStateEnum
  L2_2 = L2_1.SelectStartChapter
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = L1_1.ClockParkInstance
  L1_2 = L1_2.CurGameState
  L3_2 = L1_2
  L2_2 = L1_2.FinishRound
  L2_2(L3_2)
end
L0_1._on_dispose = L4_1
return L0_1
