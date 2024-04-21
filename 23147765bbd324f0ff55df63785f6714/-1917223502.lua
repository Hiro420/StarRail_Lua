local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueExtraTextPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueExtraTextPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.MazeBuffExcelTable
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.title_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  if A2_2 == true then
    L3_2 = L1_1.GetData
    L4_2 = A1_2.MazeRow
    L4_2 = L4_2.ID
    L5_2 = 2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.BuffDesc
    L7_2 = G
    L7_2 = L7_2.UITextUtils
    L7_2 = L7_2.GetSkillParams
    L8_2 = L3_2.ParamList
    L7_2, L8_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  elseif A2_2 == false then
    L3_2 = A0_2._binder
    L3_2 = L3_2.title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2.RogueUnlockDetail
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view = L2_1
return L0_1
