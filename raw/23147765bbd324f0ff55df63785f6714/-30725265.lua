local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.EnergyBar.NormalAvatarEnergyBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.EnergyBar.NormalAvatarEnergyBarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.EnergyBar.QingqueAvatarEnergyBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.EnergyBar.QingqueAvatarEnergyBarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEnergyBarContainerPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UI/Battle/Widget/PassiveSkill/SpecialPassive1201.prefab"
L2_1 = "UI/Battle/Widget/PassiveSkill.prefab"
L3_1 = {}
L3_1.None = 1
L3_1.Common = 2
L3_1.QingQue = 3
L4_1 = 1201
function L5_1(A0_2)
  local L1_2
  A0_2._curr_bar_path = nil
  A0_2._energy_bar = nil
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._curr_bar_path
  if L3_2 == A2_2 then
    return
  end
  L3_2 = A0_2._energy_bar
  if L3_2 ~= nil then
    L3_2 = A0_2._energy_bar
    L4_2 = L3_2
    L3_2 = L3_2.dispose
    L3_2(L4_2)
    A0_2._energy_bar = nil
  end
  L3_2 = L3_1.Common
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.NormalAvatarEnergyBarPanel
    L6_2 = G
    L6_2 = L6_2.NormalAvatarEnergyBarPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._energy_bar = L3_2
    L3_2 = A0_2._energy_bar
    L4_2 = L3_2
    L3_2 = L3_2.set_prefab_path
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._energy_bar
    L4_2 = L3_2
    L3_2 = L3_2.async_bind
    L5_2 = A0_2._binder
    L5_2 = L5_2.energy_bar_root
    L3_2(L4_2, L5_2)
  else
    L3_2 = L3_1.QingQue
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.create_panel
      L5_2 = G
      L5_2 = L5_2.QingqueAvatarEnergyBarPanel
      L6_2 = G
      L6_2 = L6_2.QingqueAvatarEnergyBarPanelBinder
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      A0_2._energy_bar = L3_2
      L3_2 = A0_2._energy_bar
      L4_2 = L3_2
      L3_2 = L3_2.async_bind
      L5_2 = A0_2._binder
      L5_2 = L5_2.energy_bar_root
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._create_energy_bar = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._energy_bar
  if L2_2 ~= nil then
    L2_2 = A0_2._energy_bar
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_energy_bar = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EnergyBarConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.CharacterID
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.EnergyBarDesc
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TextID
    L4_2 = L4_2.empty
    if L3_2 ~= L4_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_2.EnergyBarDesc
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_energy_bar_info = L5_1
return L0_1
