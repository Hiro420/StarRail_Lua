local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Talk.CutSceneTalkPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CutSceneTalkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.HedgehogTeam
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.AddUIIgnoredGameobject
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.HedgehogTeam
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.RemoveUIIgnoredGameobject
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.clear_view
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.clear_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.IsEmpty
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.safe_set_active
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_content
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
  end
  else
    L4_2 = A0_2
    L3_2 = A0_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1.show_cutscene_caption = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.hide_cutscene_caption = L1_1
return L0_1
