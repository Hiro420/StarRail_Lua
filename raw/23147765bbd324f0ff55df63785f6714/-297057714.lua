local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleMonsterShieldPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleMonsterShieldPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.BattleUIUtils
  L2_2 = L2_2.IsEntityHaveShieldBuff
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2._shield_go
    if L3_2 then
      L3_2 = A0_2._shield_go
      L3_2 = L3_2.transform
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2.instantiate_object
      L5_2 = A0_2._binder
      L5_2 = L5_2.prefab_load_meta_root
      L5_2 = L5_2.MultiPrefabList
      L5_2 = L5_2[2]
      L6_2 = A0_2._binder
      L6_2 = L6_2.root
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      A0_2._shield_go = L3_2
      L3_2 = L1_1.SafeGetCmpt
      L4_2 = typeof
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.UI
      L5_2 = L5_2.SmoothMask
      L4_2 = L4_2(L5_2)
      L5_2 = A0_2._shield_go
      L5_2 = L5_2.transform
      L6_2 = "ShieldMark/FillValue/Value_1"
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      A0_2._front_smooth_mask = L3_2
      L3_2 = L1_1.SafeGetCmpt
      L4_2 = typeof
      L5_2 = CS
      L5_2 = L5_2.UnityEngine
      L5_2 = L5_2.UI
      L5_2 = L5_2.SmoothMask
      L4_2 = L4_2(L5_2)
      L5_2 = A0_2._shield_go
      L5_2 = L5_2.transform
      L6_2 = "ShieldMark/FillValue/Value_2"
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      A0_2._back_smooth_mask = L3_2
    end
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UINumberUtils
    L3_2 = L3_2.CurrentShieldPercentByMaxHP
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._front_smooth_mask
    L4_2.fillAmount = L3_2
    L4_2 = A0_2._back_smooth_mask
    L4_2.fillAmount = L3_2
  else
    L3_2 = A0_2._shield_go
    if L3_2 then
      L3_2 = A0_2._shield_go
      L3_2 = L3_2.transform
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.setup_view = L2_1
return L0_1
