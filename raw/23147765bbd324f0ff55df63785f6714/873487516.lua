local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WeakPointIconNode"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 then
    L2_2 = A1_2.attack_damage_type
    if L2_2 then
      L2_2 = L1_1.SafeSetActive
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_active
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = L1_1.SafeSetActive
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_unactive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.DamageTypeExcelTable
      L2_2 = L2_2.GetData
      L3_2 = A1_2.attack_damage_type
      L2_2 = L2_2(L3_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_GamePhaseManager
      L4_2 = L3_2
      L3_2 = L3_2.GetCurrentPhase
      L3_2 = L3_2(L4_2)
      if L3_2 ~= nil then
        L4_2 = L3_2.CurrentPlayingTeamMember
        if L4_2 ~= nil then
          L4_2 = L3_2.CurrentPlayingTeamMember
          L6_2 = L4_2
          L5_2 = L4_2.GetComponent
          L7_2 = typeof
          L8_2 = CS
          L8_2 = L8_2.RPG
          L8_2 = L8_2.GameCore
          L8_2 = L8_2.AdventureCharacterDataComponent
          L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
          L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
          L6_2 = CS
          L6_2 = L6_2.RPG
          L6_2 = L6_2.GameCore
          L6_2 = L6_2.AdventurePlayerExcelTable
          L6_2 = L6_2.GetData
          L7_2 = L5_2.CharacterID
          L6_2 = L6_2(L7_2)
          L7_2 = CS
          L7_2 = L7_2.RPG
          L7_2 = L7_2.GameCore
          L7_2 = L7_2.AvatarExcelTable
          L7_2 = L7_2.GetData
          L8_2 = L6_2.AvatarID
          L7_2 = L7_2(L8_2)
          L8_2 = A1_2.attack_damage_type
          L9_2 = L7_2.DamageType
          if L8_2 == L9_2 then
            L8_2 = L1_1.SafeSetActive
            L9_2 = A0_2._binder
            L9_2 = L9_2.node_active
            L10_2 = true
            L8_2(L9_2, L10_2)
            L9_2 = A0_2
            L8_2 = A0_2._async_load_sprite_to
            L10_2 = A0_2._binder
            L10_2 = L10_2.img_active
            L11_2 = L2_2.IconNatureForWeakActive
            L8_2(L9_2, L10_2, L11_2)
          else
            L8_2 = L1_1.SafeSetActive
            L9_2 = A0_2._binder
            L9_2 = L9_2.node_unactive
            L10_2 = true
            L8_2(L9_2, L10_2)
            L9_2 = A0_2
            L8_2 = A0_2._async_load_sprite_to
            L10_2 = A0_2._binder
            L10_2 = L10_2.img_unactive
            L11_2 = L2_2.IconNatureForWeakUnactive
            L8_2(L9_2, L10_2, L11_2)
          end
        end
      end
    end
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
return L0_1
