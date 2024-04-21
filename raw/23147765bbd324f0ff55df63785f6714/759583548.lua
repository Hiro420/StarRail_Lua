local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Battle.BuffOutRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BuffOutRow"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.MazeBuffExcelTable
function L4_1(A0_2)
  local L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L1_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_time
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L1_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_tip
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L3_1.GetData
  L3_2 = A1_2.BuffID
  L4_2 = A1_2.Level
  L2_2 = L2_2(L3_2, L4_2)
  if nil ~= L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_skill
    L6_2 = L2_2.BuffIcon
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.BuffName
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_describe
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.BuffDesc
    L6_2 = G
    L6_2 = L6_2.UITextUtils
    L6_2 = L6_2.GetSkillParams
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.AdventureStatic
    L7_2 = L7_2.EvaluateMazeBuffDescParam
    L8_2 = A1_2
    L7_2, L8_2 = L7_2(L8_2)
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_stack
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A1_2.Count
    L3_2(L4_2, L5_2)
  end
end
L0_1.init_view = L4_1
return L0_1
