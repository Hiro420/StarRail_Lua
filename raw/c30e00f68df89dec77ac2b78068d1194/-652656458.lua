local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterBuffInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.MazeBuffExcelTable
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MonsterBuffInfoRowPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeSetActive
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_text_tips
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L0_1.GetData
  L3_2 = A1_2.BuffID
  L4_2 = A1_2.Level
  L2_2 = L2_2(L3_2, L4_2)
  if nil ~= L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.icon
    L6_2 = L2_2.BuffIcon
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = G
    L3_2 = L3_2.TextExtensions
    L3_2 = L3_2.SafeSetTextID
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_buff_name
    L5_2 = L2_2.BuffName
    L3_2(L4_2, L5_2)
    L3_2 = G
    L3_2 = L3_2.TextExtensions
    L3_2 = L3_2.SafeSetTextID
    L4_2 = L2_2.BuffDesc
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetSkillParams
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.AdventureStatic
    L6_2 = L6_2.EvaluateMazeBuffDescParam
    L7_2 = A1_2
    L6_2, L7_2 = L6_2(L7_2)
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.TextExtensions
  L2_2 = L2_2.SafeSetText_Num
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_count
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.setup_count = L2_1
return L1_1
