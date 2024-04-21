local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Buff.Components.ActivityMonopolyBuffItemDisplayPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyBuffItemDisplayPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L4_2 = A1_2
  L5_2 = A1_2.Param
  L5_2 = L5_2[1]
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A1_2[1]
  L3_2 = 100
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.Param
    L9_2 = L9_2[1]
    L3_2 = L3_2 + L9_2
    L9_2 = L8_2.ID
    L10_2 = L2_2.ID
    if L9_2 > L10_2 then
      L2_2 = L8_2
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh_view
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_merge_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.buff_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.buff_content
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.Desc
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.icon
  L6_2 = A1_2.IconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A1_2.IsPermanent
  if not L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.buff_left_round_num
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ActivityMonopoly_Buff_Duration"
    L6_2 = A1_2.LeftRound
    L6_2 = L6_2 + 1
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.buff_left_round_num
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ActivityMonopoly_Buff_Duration_Fever"
    L3_2(L4_2, L5_2)
  end
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.nodes_rank
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.SafeSetActive
    L10_2 = A1_2.Rank
    L10_2 = L10_2 == L6_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeDynamicKey
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.gameObject
  L6_2 = A1_2.ID
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._refresh_view = L1_1
return L0_1
