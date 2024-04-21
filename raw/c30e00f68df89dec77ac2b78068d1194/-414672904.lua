local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildTeamBonusInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityEvolveBuildTeamBonusInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveBuildStageExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogFormat
    L4_2 = "[hwx] \230\151\160\230\149\136\231\154\132stageMergedID:"
    L5_2 = tostring
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_buff_short_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.TeamBonusShortDesc
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = L2_2.TeamBonusMazeBuffID
  L3_2.ID = L4_2
  L3_2.Level = 1
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_buff_bonus_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_2.BuffTextFormat
  L7_2 = G
  L7_2 = L7_2.UITextUtils
  L7_2 = L7_2.GetSkillParams
  L8_2 = G
  L8_2 = L8_2.BattleUIUtils
  L8_2 = L8_2.get_maze_buff_params_dynamic
  L9_2 = L3_2
  L8_2, L9_2 = L8_2(L9_2)
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_icon
  L7_2 = L2_2.TeamBonusIconPath
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_view = L1_1
return L0_1
