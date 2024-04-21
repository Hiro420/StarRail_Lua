local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousStoryNousPanelBinder"
L0_1(L1_1)
L0_1 = "UIText_RogueNous_NousValue_GreaterThan"
L1_1 = "UIText_RogueNous_NousValue_LessThan"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "RogueNousStoryNousPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.min_nous_value
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L0_1
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.max_nous_value
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_1
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.icon_img
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#FFCE5A"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.min_nous_value
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#FFBD42"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.max_nous_value
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#FFBD42"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.root_canvas
    L2_2.alpha = 1
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.icon_img
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#FFEDC2"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.min_nous_value
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#FFFFFF"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.max_nous_value
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#FFFFFF"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  end
end
L2_1.set_highlight = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root_canvas
    L2_2.alpha = 0.2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.root_canvas
    L2_2.alpha = 0.5
  end
end
L2_1.set_dark = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root_canvas
    L2_2.alpha = 0.5
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.root_canvas
    L2_2.alpha = 0.2
  end
end
L2_1.set_light = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.icon_img
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = "#B099FF"
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.min_nous_value
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = "#B099FF"
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.max_nous_value
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = "#B099FF"
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.circle_img
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = "#B099FF"
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.arrow_img
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = "#B099FF"
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_canvas
  L1_2.alpha = 1
end
L2_1.set_purple = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon_img
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = "#3DC4A9"
  L3_2 = L3_2(L4_2)
  L2_2.color = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.min_nous_value
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = "#3DC4A9"
  L3_2 = L3_2(L4_2)
  L2_2.color = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.max_nous_value
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = "#3DC4A9"
  L3_2 = L3_2(L4_2)
  L2_2.color = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.circle_img
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = "#3DC4A9"
  L3_2 = L3_2(L4_2)
  L2_2.color = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.arrow_img
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = "#3DC4A9"
  L3_2 = L3_2(L4_2)
  L2_2.color = L3_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root_canvas
    L2_2.alpha = 1
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.root_canvas
    L2_2.alpha = 0.4
  end
end
L2_1.set_green = L3_1
return L2_1
