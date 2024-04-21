local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Mission.Components.MissionSubmitHintPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionSubmitHintPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    if A2_2 ~= L3_2 then
      goto lbl_16
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.talk_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  do return end
  ::lbl_16::
  if A1_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    if A1_2 ~= L3_2 then
      goto lbl_31
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.title_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  goto lbl_36
  ::lbl_31::
  L3_2 = A0_2._binder
  L3_2 = L3_2.title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  ::lbl_36::
  L4_2 = A0_2
  L3_2 = A0_2._start_print
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2._is_playing = true
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_text_motion
  L3_2 = L2_2
  L2_2 = L2_2.ShowTextIDWithMotion
  L4_2 = 0.05
  function L5_2()
    local L0_3, L1_3
    A0_2._is_playing = false
  end
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._start_print = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_playing
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.mono_text_motion
    L2_2 = L1_2
    L1_2 = L1_2.ImmediateFinishAllMotions
    L1_2(L2_2)
    A0_2._is_playing = false
  end
end
L0_1._on_btn_click = L1_1
return L0_1
