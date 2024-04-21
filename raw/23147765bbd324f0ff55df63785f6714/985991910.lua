local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Mix.EvolveBuildMixGearDescPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildMixGearDescPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_lv
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_EvolveBuild_WeaponLevel"
  L5_2 = A1_2.Lv
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.EvolveBuildUtils
  L2_2 = L2_2.SetMazeBuffDesc
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L4_2 = A1_2
  L5_2 = true
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = 0.5
  ::lbl_7::
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L3_2 = L3_2.color
  L3_2.a = L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_desc
  L4_2.color = L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_lv
  L3_2 = L4_2.color
  L3_2.a = L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_lv
  L4_2.color = L3_2
end
L0_1.set_text_active = L1_1
return L0_1
