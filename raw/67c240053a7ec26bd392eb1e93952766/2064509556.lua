local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AssetLoader"
L0_1 = L0_1(L1_1)
function L1_1()
  local L0_2, L1_2
end
L0_1.Init = L1_1
function L1_1()
  local L0_2, L1_2
end
L0_1.Dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = nil
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AssetLoader
  L3_2 = L3_2.SyncLoadAsset
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L3_2
  return L2_2
end
L0_1.SyncLoadAsset = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = nil
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AssetLoader
  L3_2 = L3_2.AsyncLoadAsset
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L3_2
  return L2_2
end
L0_1.AsyncLoadAsset = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AssetLoader
  L1_2 = L1_2.ReleaseAsset
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.ReleaseAsset = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AssetLoader
  L1_2 = L1_2.CancleAyscLoad
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.CancleAyscLoad = L1_1
return L0_1
