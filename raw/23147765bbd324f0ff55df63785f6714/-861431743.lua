local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.StoryLine.ActivityClockParkStoryLinePanelNewPlayerBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.StoryLine.ActivityClockParkStoryLinePanelNormalBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkStoryLinePanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  A0_2._script_info = A1_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetClockParkScriptData
  L5_2 = A0_2._script_info
  L5_2 = L5_2.ScriptID
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._script_data = L3_2
  L3_2 = 0
  L4_2 = A0_2._script_data
  L4_2 = L4_2.ChapterList
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._script_data
    L7_2 = L7_2.ChapterList
    L7_2 = L7_2[L6_2]
    L8_2 = A0_2._binder
    L8_2 = L8_2.chapter_panels
    L9_2 = L6_2 + 1
    L8_2 = L8_2[L9_2]
    if L8_2 ~= nil then
      L10_2 = L8_2
      L9_2 = L8_2.setup_view
      L11_2 = A0_2._script_info
      L12_2 = L7_2
      L13_2 = L6_2 + 1
      L14_2 = A2_2
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    end
  end
end
L1_1.setup_view = L2_1
return L1_1
