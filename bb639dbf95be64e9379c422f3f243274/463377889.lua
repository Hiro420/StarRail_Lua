local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.EnergyBar.QingqueAvatarEnergyBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.EnergyBar.QingqueAvatarEnergyBarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAvatarEnergyBarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1201
L2_1 = 0
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._avatar_id_to_special_panel = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._avatar_data_cmpt = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_energy_bar_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_energy_bar
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._avatar_id_to_special_panel = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.EnergyBarConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data_cmpt
  L2_2 = L2_2.CharacterID
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.EnergyBarDesc
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    if L2_2 ~= L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_desc
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_desc
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L1_2.EnergyBarDesc
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_energy_bar_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UINumberUtils
  L1_2 = L1_2.CurrentHPPercent
  L2_2 = A0_2._avatar_data_cmpt
  L2_2 = L2_2.OwnerEntity
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 == 0
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2._avatar_data_cmpt
  L2_2 = L2_2.CharacterID
  L3_2 = L1_1
  if L2_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.normal_energy_bar_panel
    L4_2 = L3_2
    L3_2 = L3_2.safe_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_special_energy_bar
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._try_create_special_panel
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.setup_view
    L6_2 = A0_2._avatar_data_cmpt
    L4_2(L5_2, L6_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_special_energy_bar
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._avatar_data_cmpt
    L3_2 = L3_2.EnergyBarState
    L3_2 = L3_2.CounterType
    L4_2 = L2_1
    if L3_2 == L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2.safe_set_active
      L5_2 = false
      L3_2(L4_2, L5_2)
      return
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.normal_energy_bar_panel
    L4_2 = L3_2
    L3_2 = L3_2.safe_set_active
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.normal_energy_bar_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._avatar_data_cmpt
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_energy_bar = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._avatar_id_to_special_panel
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.safe_set_active
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._avatar_id_to_special_panel
  L2_2 = L1_1
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.QingqueAvatarEnergyBarPanel
    L4_2 = G
    L4_2 = L4_2.QingqueAvatarEnergyBarPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = L1_2
    L2_2 = L1_2.sync_loadto
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_special_energy_bar
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._avatar_id_to_special_panel
    L3_2 = L1_1
    L2_2[L3_2] = L1_2
  end
  L1_2 = A0_2._avatar_id_to_special_panel
  L2_2 = L1_1
  L1_2 = L1_2[L2_2]
  L3_2 = L1_2
  L2_2 = L1_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  return L1_2
end
L0_1._try_create_special_panel = L3_1
return L0_1
