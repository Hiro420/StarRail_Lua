local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.TreasureChallengeTargetsPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.TreasureChallengeListTargetsPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureChallengeTargetsPanel"
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
  L4_2 = {}
  A0_2._coroutines = L4_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._stop_all_coroutines
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
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
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._stop_all_coroutines
  L1_2(L2_2)
  L1_2 = {}
  A0_2._coroutines = L1_2
  L1_2 = 1
  L2_2 = 1
  L3_2 = A0_2._targets
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.challenge_targets
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.can_play_effect
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.CoroutineUtils
      L7_2 = L7_2.InvokeAfterSeconds
      L8_2 = 0.1 * L1_2
      function L9_2()
        local L0_3, L1_3
        L0_3 = L6_2
        L1_3 = L0_3
        L0_3 = L0_3.try_play_first_get_effect
        L0_3(L1_3)
      end
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._coroutines
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L1_2 = L1_2 + 1
    end
  end
end
L0_1.do_flash = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._targets = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.set_self_active
  L4_2 = A0_2._targets
  L4_2 = #L4_2
  L4_2 = L4_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._targets
  L2_2 = #L2_2
  if L2_2 == 0 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.challenge_targets
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._targets
  L2_2(L3_2, L4_2)
end
L0_1.setup_view_by_generated_data = L1_1
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
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._coroutines
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.CoroutineUtils
    L6_2 = L6_2.StopCoroutine
    L7_2 = L5_2
    L6_2(L7_2)
  end
  A0_2._coroutines = nil
end
L0_1._stop_all_coroutines = L1_1
return L0_1
