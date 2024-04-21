local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.ToastMissionDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ToastMissionCompanionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ToastMissionCompanionDialog"
L2_1 = G
L2_1 = L2_1.ToastMissionDialog
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.MissionChapterConfigExcelTable
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.ToastMissionCompanionPanelBinder
  return L1_2
end
L0_1._get_binder = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = L1_2
  L1_2 = L1_2.GetMainMissionRow
  L3_2 = A0_2._panel_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_1.GetData
  L3_2 = L1_2.ChapterID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_chapter
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.ChapterName
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.image_chapter
  L6_2 = L2_2.ChapterIconPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_play = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_complete = L2_1
return L0_1
