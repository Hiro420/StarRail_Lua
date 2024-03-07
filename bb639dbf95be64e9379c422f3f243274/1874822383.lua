local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.HP.BattleMultiHpInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.HP.BattleMultiHpUnitPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleMultiHpInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._multi_hp_unit_panels = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._entity = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_max_hp
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_cur_hp
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L3_2 = L1_2
  L2_2 = L1_2.GetCurrentPhase
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
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = L3_2
  L4_2 = L3_2.GetEntityMultiHpMaxSeg
  L6_2 = A0_2._entity
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._max_seg = L4_2
  L4_2 = A0_2._multi_hp_unit_panels
  L4_2 = #L4_2
  L5_2 = A0_2._max_seg
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L9_2 = A0_2
    L8_2 = A0_2.instantiate_object
    L10_2 = A0_2._binder
    L10_2 = L10_2.prefab_loadmeta_hp_unit
    L10_2 = L10_2.Prefab
    L11_2 = A0_2._binder
    L11_2 = L11_2.prefab_loadmeta_hp_unit
    L11_2 = L11_2.transform
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = A0_2
    L9_2 = A0_2.create_panel
    L11_2 = G
    L11_2 = L11_2.BattleMultiHpUnitPanel
    L12_2 = G
    L12_2 = L12_2.BattleMultiHpUnitPanelBinder
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L11_2 = L9_2
    L10_2 = L9_2.bind
    L12_2 = L8_2
    L10_2(L11_2, L12_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = A0_2._multi_hp_unit_panels
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
end
L0_1._setup_max_hp = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UINumberUtils
  L1_2 = L1_2.CurrentHPSeg
  L2_2 = A0_2._entity
  L3_2 = A0_2._max_seg
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = 1
  L3_2 = A0_2._max_seg
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._multi_hp_unit_panels
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.set_active
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._max_seg
  L2_2 = L2_2 + 1
  L3_2 = A0_2._multi_hp_unit_panels
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._multi_hp_unit_panels
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.set_active
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._multi_hp_unit_panels
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_enable
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
  L2_2 = L1_2 + 1
  L3_2 = A0_2._max_seg
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._multi_hp_unit_panels
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_enable
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_hp_seg_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_cur_hp = L1_1
return L0_1
