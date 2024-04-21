local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.ScoreContainer.WolfBroShootingRateScorePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WolfBroShootingRateScorePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RPGAnimationEvent
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.AddAnimationEvent
  L4_2 = "BattleShootingTargetScore_FadeIn"
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._parent
    L1_3 = L0_3
    L0_3 = L0_3.cache_panel
    L2_3 = CS
    L2_3 = L2_3.RPG
    L2_3 = L2_3.Client
    L2_3 = L2_3.EWolfBroGunPlayTargetScoreMode
    L2_3 = L2_3.AddWithBonus
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = "+"
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.0f"
  L5_2 = A1_2.Value1
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_score
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = "x"
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%.1f"
  L6_2 = A1_2.Value2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_rate
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector3
  L5_2 = A1_2.x
  L6_2 = A1_2.y
  L7_2 = 0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.localPosition = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L3_2.localScale = A2_2
end
L0_1.setup_transform = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
