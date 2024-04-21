local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueCommon.Shop.Miracle.Components.RogueMiralceShopAvatarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueCommon.Shop.Miracle.Components.ChessRogueMiracleAvatarIcon"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueMiralceShopAvatarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._is_shown
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_rogue_all_picked_avatars
  L1_2 = L1_2()
  L2_2 = {}
  A0_2._avatar_panels = L2_2
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2.instantiate_object
    L9_2 = A0_2._binder
    L9_2 = L9_2.prefab_load_meta
    L9_2 = L9_2.MultiPrefabList
    L9_2 = L9_2[0]
    L10_2 = A0_2._binder
    L10_2 = L10_2.prefab_load_meta
    L10_2 = L10_2.transform
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.ChessRogueMiracleAvatarIcon
    L11_2 = G
    L11_2 = L11_2.ChessRogueMiracleAvatarIconBinder
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.bind
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.setup_view
    L11_2 = L1_2[L5_2]
    L9_2(L10_2, L11_2)
    L9_2 = #L1_2
    if L5_2 ~= L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2.instantiate_object
      L11_2 = A0_2._binder
      L11_2 = L11_2.prefab_load_meta
      L11_2 = L11_2.MultiPrefabList
      L11_2 = L11_2[1]
      L12_2 = A0_2._binder
      L12_2 = L12_2.prefab_load_meta
      L12_2 = L12_2.transform
      L9_2(L10_2, L11_2, L12_2)
    end
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._avatar_panels
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  A0_2._is_shown = true
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._avatar_panels
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.trigger_click
  L1_2(L2_2)
end
L0_1.show_team = L1_1
return L0_1
