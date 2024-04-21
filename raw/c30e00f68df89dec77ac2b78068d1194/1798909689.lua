local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyMiniGameRewardRankPanel"
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
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._resource_data = A1_2
  A0_2._resource_value = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._resource_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_rank
  L4_2 = A0_2._resource_data
  L4_2 = L4_2.RuleIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_rank_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._resource_value
  L1_2(L2_2, L3_2)
end
L0_1._refresh_view = L1_1
return L0_1
