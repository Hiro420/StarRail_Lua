local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.UIUtils.UIColorUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeInfoItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.UIColorUtils
L1_1 = L1_1.GetColor
L2_1 = "#dcc491"
L1_1 = L1_1(L2_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.BattleScoringConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A0_2._row = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_color
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._is_show_times
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = A0_2._row
    L3_2 = L3_2.BonusScore
    L3_2 = A1_2 / L3_2
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2._set_score
    L5_2 = math
    L5_2 = L5_2.min
    L6_2 = A0_2._row
    L6_2 = L6_2.BonusScore
    L7_2 = A1_2
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = A0_2
    L3_2 = A0_2._set_times
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_score
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_score = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L2_2.color = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_score
  L2_2.color = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_times
  L2_2.color = A1_2
end
L0_1.set_color = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_times
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_desc
  L3_2 = A0_2._row
  L3_2 = L3_2.BonusDesc
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_score_rule
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetSkillParams
  L6_2 = A0_2._row
  L6_2 = L6_2.ParamList
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._set_desc = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_score
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_score = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_score
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.ScoreRuleDesc
  L4_2 = A0_2._row
  L4_2 = L4_2.BonusScore
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._set_score_rule = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_times
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 1 < A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_times
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ChallengeActivity_HitCount"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._set_times = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._is_show_special_color
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_color
      L4_2 = L1_1
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_color = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_contain_display_type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.BattleScoringDisplayType
  L3_2 = L3_2.ShowTimes
  return L1_2(L2_2, L3_2)
end
L0_1._is_show_times = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_contain_display_type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.BattleScoringDisplayType
  L3_2 = L3_2.SettleOnly
  return L1_2(L2_2, L3_2)
end
L0_1._is_show_special_color = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._row
  L2_2 = L2_2.DisplayTypeList
  if L2_2 ~= nil then
    L2_2 = A0_2._row
    L2_2 = L2_2.DisplayTypeList
    L2_2 = L2_2.Length
    if L2_2 ~= 0 then
      goto lbl_12
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_12::
  L2_2 = 0
  L3_2 = A0_2._row
  L3_2 = L3_2.DisplayTypeList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._row
    L6_2 = L6_2.DisplayTypeList
    L6_2 = L6_2[L5_2]
    if L6_2 == A1_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_contain_display_type = L2_1
return L0_1
