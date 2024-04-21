local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "PuzzlePutMapPoseSwitcherStrategy"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.PutMapPoseSwitcher
  L1_2(L2_2)
end
L0_1.execute = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.AdventureStatic
  L1_2 = L0_2
  L0_2 = L0_2.GetMapRotationCurrentEnergy
  return L0_2(L1_2)
end
L0_1.get_current_count = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.AdventureStatic
  L1_2 = L0_2
  L0_2 = L0_2.GetMapRotationMaxEnergy
  return L0_2(L1_2)
end
L0_1.get_max_count = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.MapRotationUtils
  L0_2 = L0_2.HasMapRotationEnergy
  L0_2 = L0_2()
  L0_2 = not L0_2
  return L0_2
end
L0_1.is_forbid = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.MapRotationUtils
  L0_2 = L0_2.HasMapRotationEnergy
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = CS
    L0_2 = L0_2.RPG
    L0_2 = L0_2.Client
    L0_2 = L0_2.MapRotationUtils
    L0_2 = L0_2.IsInMapRotationVolume
    L0_2 = L0_2()
    if not L0_2 then
      L0_2 = true
      return L0_2
    end
  end
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.MapRotationUtils
  L0_2 = L0_2.IsPoseSwitching
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = true
    return L0_2
  end
  L0_2 = false
  return L0_2
end
L0_1.is_disable = L1_1
return L0_1
