local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyRollResultPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyRollResultPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "MonopolyRollPerformance"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_animation_finish
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._value = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.value_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_animation
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._anim_finish_cbk = A1_2
  A0_2._anim_finish_listener = A2_2
end
L0_1.register_anim_finish_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._anim_finish_cbk
  if L1_2 then
    L1_2 = A0_2._anim_finish_listener
    if L1_2 then
      L1_2 = A0_2._anim_finish_cbk
      L2_2 = A0_2._anim_finish_listener
      L3_2 = A0_2._value
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_animation_finish = L1_1
return L0_1
