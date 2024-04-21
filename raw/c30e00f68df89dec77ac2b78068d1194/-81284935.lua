local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Maze.CountDownInfoDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CountDownInfoDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "CountDownInfoFadeIn"
L2_1 = "CountDownInfoFadeOut"
L3_1 = 3
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.CountDownInfoDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L3_1
  A0_2._data_count_down = L1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_num
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_num
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_num
  L2_2 = L1_2
  L1_2 = L1_2.WaitAnimationEnd
  L3_2 = A0_2._on_num_anim_end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data_count_down
  L1_2 = L1_2 - 1
  A0_2._data_count_down = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_num
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_num
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
  L1_2 = A0_2._data_count_down
  if 1 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_num
    L2_2 = L1_2
    L1_2 = L1_2.WaitAnimationEnd
    L3_2 = A0_2._on_num_anim_end
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_root
    L2_2 = L1_2
    L1_2 = L1_2.WaitAnimationEnd
    function L3_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.exit
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_num_anim_end = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data_count_down
  L1_2(L2_2, L3_2)
end
L0_1._setup_num = L4_1
return L0_1
