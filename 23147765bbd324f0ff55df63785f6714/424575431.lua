local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.EnergyBar.QingqueMahjongTilePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.EnergyBar.QingqueMahjongTilePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QingqueAvatarEnergyBarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 4
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.QingQueEnergyBarIconType
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L1_2.playAutomatically = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_touch
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._tile_panels = L1_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.QingqueMahjongTilePanel
    L8_2 = G
    L8_2 = L8_2.QingqueMahjongTilePanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_tiles
    L9_2 = L8_2
    L8_2 = L8_2.GetChild
    L10_2 = L4_2
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._tile_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.BattleInstanceRef
  L2_2 = L2_2.GameWorldRef
  L2_2 = L2_2.EntityManagerRef
  L2_2 = L2_2.LevelEntity
  L4_2 = L2_2
  L3_2 = L2_2.GetComponent
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.LevelUIComponent
  L5_2, L6_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.GetQingqueEnergyBarData
  L6_2 = A1_2.OwnerEntity
  L6_2 = L6_2.RuntimeID
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._energy_bar_ntf = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rong
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._energy_bar_ntf
  L3_2 = A0_2._energy_bar_ntf
  L3_2 = L3_2 ~= nil and L3_2
  L1_2(L2_2, L3_2)
  L1_2 = ipairs
  L2_2 = A0_2._tile_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._energy_bar_ntf
    if L6_2 then
      L6_2 = A0_2._energy_bar_ntf
      L6_2 = L6_2.IconList
    end
    if L6_2 then
      L7_2 = L4_2 - 1
      L8_2 = L6_2.Count
      if not (L7_2 >= L8_2) then
        goto lbl_32
      end
    end
    L8_2 = L5_2
    L7_2 = L5_2.setup_view
    L9_2 = L2_1.Invalid
    L7_2(L8_2, L9_2)
    goto lbl_36
    ::lbl_32::
    L8_2 = L5_2
    L7_2 = L5_2.setup_view
    L9_2 = L4_2 - 1
    L9_2 = L6_2[L9_2]
    L7_2(L8_2, L9_2)
    ::lbl_36::
  end
end
L0_1._refresh = L3_1
return L0_1
