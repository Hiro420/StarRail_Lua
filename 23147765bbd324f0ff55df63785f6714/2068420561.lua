local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ShutCutInfoItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActionGroupExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.ActionGroupTextmapID
    L3_2(L4_2, L5_2)
    L3_2 = L2_2.ActionName
    if L3_2 then
      L3_2 = L2_2.ActionName
      if L3_2 ~= "" then
        L3_2 = A0_2._binder
        L3_2 = L3_2.ui_in_control_tip
        L4_2 = L3_2
        L3_2 = L3_2.SetInControlTipKey
        L5_2 = L2_2.ActionName
        L6_2 = true
        L3_2(L4_2, L5_2, L6_2)
    end
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.ui_in_control_tip
      L4_2 = L3_2
      L3_2 = L3_2.SetInControlTipKey
      L5_2 = L2_2.ActionGroupName
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
    end
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.InControlActionMapExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
    if L2_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_2.actionTextmapID
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.ui_in_control_tip
      L4_2 = L3_2
      L3_2 = L3_2.SetInControlTipKey
      L5_2 = A1_2
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1.setup_view = L1_1
return L0_1
