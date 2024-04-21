local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.BattleTargetItemProxyPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.TreasureChallengeTargetItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleTargetItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleTargetItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleTargetItemProxyPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L5_2 = A2_2
  L4_2 = A2_2.set_is_fix_height
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._data = A1_2
  A0_2._is_battle_target = A2_2
  A0_2._use_simple_desc = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._create_target_panel
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.refresh
  L4_2(L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_battle_target
  if L1_2 then
    L1_2 = A0_2._target_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._data
    L4_2 = A0_2._use_simple_desc
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._target_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view_in_battle
    L3_2 = A0_2._data
    L4_2 = A0_2._use_simple_desc
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._data = A1_2
  L2_2 = A0_2._target_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh_when_progress_changed
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.refresh_when_progress_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._target_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_hint_status
  L1_2(L2_2)
end
L0_1.play_hint_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_battle_target
  if not L1_2 then
    return
  end
  L1_2 = A0_2._target_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_target_switch_anim
  L1_2(L2_2)
end
L0_1.play_target_switch_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_battle_target
  if not L1_2 then
    return
  end
  L1_2 = A0_2._target_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_target_no_switch_anim
  L1_2(L2_2)
end
L0_1.play_target_no_switch_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_battle_target
  if not L1_2 then
    return
  end
  L1_2 = A0_2._target_panel
  L2_2 = L1_2
  L1_2 = L1_2.play_new_target_anim
  L1_2(L2_2)
end
L0_1.play_new_target_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_battle_target
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.BattleTargetItemPanel
    L4_2 = G
    L4_2 = L4_2.BattleTargetItemPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._target_panel = L1_2
  else
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.TreasureChallengeTargetItemPanel
    L4_2 = G
    L4_2 = L4_2.BattleTargetItemPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._target_panel = L1_2
  end
  L1_2 = A0_2._target_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
end
L0_1._create_target_panel = L1_1
return L0_1
