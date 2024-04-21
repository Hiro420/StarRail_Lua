local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = "MonopolyCookieDiagramIcon_Active"
L1_1 = "MonopolyCookieDiagramIcon_Final"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityMonopolyGachaARewardRankIconPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A1_2.RuleIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1.set_icon_active = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L2_1.set_icon_final_active = L3_1
return L2_1
