local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueTextDescPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueTextDescPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.content
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A1_2.MazeRow
  L3_2 = L3_2.ParamList
  L3_2 = L3_2.Length
  if 0 < L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.content
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2.MazeRow
    L5_2 = L5_2.BuffDesc
    L6_2 = G
    L6_2 = L6_2.UITextUtils
    L6_2 = L6_2.GetSkillParams
    L7_2 = A1_2.MazeRow
    L7_2 = L7_2.ParamList
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.content
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2.MazeRow
    L5_2 = L5_2.BuffDesc
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = A1_2.textid
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2.requirement
  if 0 < L3_2 then
    L3_2 = L2_2
    L4_2 = "("
    L5_2 = A1_2.current_progress
    L6_2 = "/"
    L7_2 = A1_2.requirement
    L8_2 = ")"
    L2_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.content
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view_by_unlock_config = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.content
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2
    L6_2 = G
    L6_2 = L6_2.UITextUtils
    L6_2 = L6_2.GetSkillParams
    L7_2 = A2_2
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.content
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_textid_param = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = nil
  if A2_2 ~= nil then
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  else
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.content
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = L3_2
  L7_2 = "\n"
  L6_2 = L6_2 .. L7_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_textid_with_next_line = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = nil
  if A2_2 ~= nil then
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  else
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.content
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = "\227\128\140"
  L7_2 = L3_2
  L8_2 = "\227\128\141"
  L6_2 = L6_2 .. L7_2 .. L8_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_bg_desc_text = L1_1
return L0_1
