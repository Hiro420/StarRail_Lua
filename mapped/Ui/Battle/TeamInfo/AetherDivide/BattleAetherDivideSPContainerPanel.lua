local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideSPPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideSPPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAetherDivideSPContainerPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._sp_panel = nil
  A0_2._max_sp = 0
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._entity = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UINumberUtils
  L2_2 = L2_2.MaxSP
  L3_2 = A0_2._entity
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._max_sp
  if L3_2 ~= L2_2 then
    A0_2._max_sp = L2_2
    L4_2 = A0_2
    L3_2 = A0_2._dispose_sp_panel
    L3_2(L4_2)
    if L2_2 <= 0 then
      return
    end
    L4_2 = A0_2
    L3_2 = A0_2._create_sp_panel
    L3_2(L4_2)
  end
  if L2_2 <= 0 then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UINumberUtils
  L3_2 = L3_2.CurrentSP
  L4_2 = A0_2._entity
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._sp_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_cur_sp
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.BattleAetherDivideUtils
  L4_2 = L4_2.TryGetAetherTypeConfig
  L5_2 = A0_2._entity
  L4_2 = L4_2(L5_2)
  if L4_2 ~= nil then
    L5_2 = A0_2._sp_panel
    L6_2 = L5_2
    L5_2 = L5_2.set_color_by_type
    L7_2 = L4_2.SpiritType
    L5_2(L6_2, L7_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._sp_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._sp_panel
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
  end
end
L0_1._dispose_sp_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BattleAetherDivideSPPanel
  L4_2 = G
  L4_2 = L4_2.BattleAetherDivideSPPanelBinder
  L5_2 = A0_2._max_sp
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._sp_panel = L1_2
  L1_2 = A0_2._sp_panel
  L2_2 = L1_2
  L1_2 = L1_2.sync_loadto
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_container
  L1_2(L2_2, L3_2)
end
L0_1._create_sp_panel = L1_1
return L0_1
