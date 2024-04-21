local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Billboard.TextNPCTitlePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TextNPCTitlePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._Title = ""
  A0_2._is_active = false
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.TextNPCTitlePanelBinder
  L1_2 = L1_2(L2_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._is_active
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._Refresh
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.TextTitle
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._Title
  if L1_2 == "" then
    L1_2 = A0_2._binder
    L1_2 = L1_2.TextTitle
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = ""
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.TextTitle
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._Title
    L1_2(L2_2, L3_2)
  end
end
L0_1._Refresh = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._Title = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._Refresh
  L2_2(L3_2)
end
L0_1.SetupTitle = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_active = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_light_weight_active = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.set_light_weight_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1.Close = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L3_2 = L2_2
    L2_2 = L2_2.SetSiblingIndex
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.adjust_hierarchy = L1_1
return L0_1
