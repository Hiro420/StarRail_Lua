local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingScoreContainerPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.ScoreContainer.WolfBroShootingAddScorePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.ScoreContainer.WolfBroShootingMinusScorePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.ScoreContainer.WolfBroShootingRateScorePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.ScoreContainer.WolfBroShootingBeChangedPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WolfBroShootingScoreContainerPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = {}
  L4_2 = {}
  L5_2 = {}
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  A0_2._unuse_panels = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A2_2
  L3_2 = A2_2.set_active
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._unuse_panels
  L5_2 = #A1_2
  L4_2 = L4_2[L5_2]
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.cache_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._get_panel
  L4_2 = A1_2.Mode
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.get_local_point_in_rectangle
  L5_2 = A1_2.Position
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector3
  L5_2 = A1_2.Scale
  L6_2 = A1_2.Scale
  L7_2 = 1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = L2_2
  L5_2 = L2_2.setup_view
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
  L6_2 = L2_2
  L5_2 = L2_2.setup_transform
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._have_cache_panel
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_cache_panel
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._create_panel
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1._get_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._unuse_panels
  L3_2 = #A1_2
  L2_2 = L2_2[L3_2]
  L2_2 = #L2_2
  L2_2 = 0 < L2_2
  return L2_2
end
L0_1._have_cache_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = table
  L2_2 = L2_2.remove
  L3_2 = A0_2._unuse_panels
  L4_2 = #A1_2
  L3_2 = L3_2[L4_2]
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1._get_cache_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = nil
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.EWolfBroGunPlayTargetScoreMode
  L3_2 = L3_2.Add
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._get_add_panel
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.EWolfBroGunPlayTargetScoreMode
    L3_2 = L3_2.Del
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._get_minus_panel
      L3_2 = L3_2(L4_2)
      L2_2 = L3_2
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.EWolfBroGunPlayTargetScoreMode
      L3_2 = L3_2.AddWithBonus
      if A1_2 == L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2._get_rate_score_panel
        L3_2 = L3_2(L4_2)
        L2_2 = L3_2
      else
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.EWolfBroGunPlayTargetScoreMode
        L3_2 = L3_2.Energy
        if A1_2 == L3_2 then
          L4_2 = A0_2
          L3_2 = A0_2._get_be_changed_panel
          L3_2 = L3_2(L4_2)
          L2_2 = L3_2
        end
      end
    end
  end
  return L2_2
end
L0_1._create_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.prefab_load_meta
  L1_2 = L1_2.MultiPrefabList
  L1_2 = L1_2[0]
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.WolfBroShootingAddScorePanel
  L5_2 = G
  L5_2 = L5_2.WolfBroShootingAddScorePanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.instantiate_object
  L5_2 = L1_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L2_2
  L4_2 = L2_2.bind
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L2_2
end
L0_1._get_add_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.prefab_load_meta
  L1_2 = L1_2.MultiPrefabList
  L1_2 = L1_2[1]
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.WolfBroShootingMinusScorePanel
  L5_2 = G
  L5_2 = L5_2.WolfBroShootingMinusScorePanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.instantiate_object
  L5_2 = L1_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L2_2
  L4_2 = L2_2.bind
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L2_2
end
L0_1._get_minus_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.prefab_load_meta
  L1_2 = L1_2.MultiPrefabList
  L1_2 = L1_2[2]
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.WolfBroShootingRateScorePanel
  L5_2 = G
  L5_2 = L5_2.WolfBroShootingRateScorePanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.instantiate_object
  L5_2 = L1_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L2_2
  L4_2 = L2_2.bind
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L2_2
end
L0_1._get_rate_score_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.prefab_load_meta
  L1_2 = L1_2.MultiPrefabList
  L1_2 = L1_2[3]
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.WolfBroShootingBeChangedPanel
  L5_2 = G
  L5_2 = L5_2.WolfBroShootingBeChangedPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.instantiate_object
  L5_2 = L1_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L2_2
  L4_2 = L2_2.bind
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  return L2_2
end
L0_1._get_be_changed_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_MainCamera
  L3_2 = L2_2
  L2_2 = L2_2.WorldToScreenPoint
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.RectTransformUtility
  L4_2 = L4_2.ScreenPointToLocalPointInRectangle
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.transform
  L6_2 = L3_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_UICamera
  L8_2 = nil
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if not L4_2 then
    L6_2 = G
    L6_2 = L6_2.SuperDebug
    L6_2 = L6_2.LogErrorFormat
    L7_2 = "Failed to get coordinates!"
    L6_2(L7_2)
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Vector3
    L6_2 = L6_2.zero
    return L6_2
  end
  return L5_2
end
L0_1.get_local_point_in_rectangle = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
