local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.RaidEntranceTargetItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.RaidEntranceTargetsPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidEntranceTargetsPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = A3_2 or nil
  if not A3_2 then
    L4_2 = false
  end
  A0_2._in_battle = L4_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2.setup_datas
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_self_active
  L5_2 = A0_2._targets
  L5_2 = #L5_2
  L5_2 = L5_2 ~= 0
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._targets
  L3_2 = #L3_2
  if L3_2 == 0 then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.challenge_targets
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._targets
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._raidID = A1_2
  A0_2._level = A2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RaidConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._row = L3_2
  L3_2 = G
  L3_2 = L3_2.RaidUtils
  L3_2 = L3_2.get_format_treasure_challenge_targets
  L4_2 = A0_2._row
  L5_2 = A0_2._in_battle
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._targets = L3_2
end
L0_1.setup_datas = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_self_active = L1_1
return L0_1
