local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousBattleExtendItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousBattleExtendItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Rogue_Aeon_Level_Tip_1"
L2_1 = G
L2_1 = L2_1.RogueNousUtils
L2_1 = L2_1.get_max_additional_level
L2_1 = L2_1()
function L3_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_difficulty_level
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_difficulty_level
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_1
    L5_2 = L2_1
    L6_2 = A1_2.Sort
    L5_2 = L5_2 - L6_2
    L5_2 = L5_2 + 1
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_difficulty_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.DifficultyDesc
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetSkillParams
  L6_2 = A1_2.ParamList
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.setup_view = L3_1
return L0_1
