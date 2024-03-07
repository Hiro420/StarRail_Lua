local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BillboardPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/BillBoard/BillboardPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Canvas"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.canvas = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIBillboard
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_billboard = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Canvas/BubbleContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.bubble_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Canvas/TextContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.text_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Canvas/HPBarContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.hpbar_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Canvas/IconContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.icon_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Canvas/FloatingTextContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.floating_text_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Canvas/InwardBubbleContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.inward_text_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Canvas/WarningMarkContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_warning_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Canvas/TextContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ani_text_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RPGAnimationEvent
  L4_2 = "Canvas/TextContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ani_event_text_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Canvas/ClockBoyBubbleContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_heartdial_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoPerformanceUITransfer
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mono_tick = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
