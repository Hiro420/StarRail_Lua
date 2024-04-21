local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TabItemBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2.visible_control_nodes = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    A0_2.tab_btn_root = A1_2
    L2_2 = A0_2.tab_btn_root
    L3_2 = L2_2
    L2_2 = L2_2.GetComponent
    L4_2 = typeof
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.UI
    L5_2 = L5_2.Button
    L4_2, L5_2 = L4_2(L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2.tab_btn = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._on_tab_btn_bind
    L2_2(L3_2)
  end
end
L0_1.bind_tab_btn = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1.super
  L2_2 = L2_2.bind
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TabContentAnimation
  L5_2 = nil
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.content_anim = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Animation
  L5_2 = nil
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.switch_animation = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.RPGAnimationEvent
  L5_2 = nil
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2.switch_animation_event = L2_2
end
L0_1.bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2.tab_btn_root = nil
  L1_2 = A0_2.tab_btn
  if L1_2 ~= nil then
    L1_2 = A0_2.tab_btn
    L1_2.onSelectTrigger = nil
  end
  A0_2.tab_btn = nil
  L1_2 = L0_1.super
  L1_2 = L1_2.dispose
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.dispose = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = L1_1.SafeGetCmpt
  L5_2 = typeof
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2.tab_btn_root
  L7_2 = A2_2
  L8_2 = A3_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._safe_get_cmpt_in_btn = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L1_1.SafeFind
  L4_2 = A0_2.tab_btn_root
  L5_2 = A1_2
  L6_2 = A2_2
  return L3_2(L4_2, L5_2, L6_2)
end
L0_1._safe_find_in_btn = L2_1
function L2_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._owner
  L4_2 = L3_2
  L3_2 = L3_2.create_panel
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = ...
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.bind
  L6_2 = A0_2.tab_btn_root
  L4_2(L5_2, L6_2)
  return L3_2
end
L0_1._create_panel_in_btn = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_tab_btn_bind = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.visible_control_nodes
  L4_2 = A0_2
  L3_2 = A0_2._safe_find
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2[A1_2] = L3_2
end
L0_1._add_visible_control_node = L2_1
return L0_1
