local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TestAssetRecord"
L2_1 = G
L2_1 = L2_1.TestBase
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AssetRecorder
  L1_2 = L1_2(L2_2)
  A0_2._AssetRecorder = L1_2
  A0_2._AsyncAsset = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._AssetRecorder
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Run = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._AssetRecorder
  L2_2 = L1_2
  L1_2 = L1_2.Dispose
  L1_2(L2_2)
  A0_2._AssetRecorder = nil
end
L0_1.Dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._AssetRecorder
  L2_2 = L1_2
  L1_2 = L1_2.Load
  L3_2 = "UI/Dev/Debug/DebugLuaPage.prefab"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._AssetRecorder
  L3_2 = L2_2
  L2_2 = L2_2.Unload
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._LoadTestA = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._UnLoadTestA = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._AssetRecorder
  L2_2 = L1_2
  L1_2 = L1_2.LoadAsync
  L3_2 = "UI/Dev/Debug/DebugLuaPage.prefab"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._AsyncAsset = L1_2
end
L0_1._LoadTestB = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._AssetRecorder
  L2_2 = L1_2
  L1_2 = L1_2.Unload
  L3_2 = A0_2._AsyncAsset
  L1_2(L2_2, L3_2)
  A0_2._AsyncAsset = nil
end
L0_1._UnLoadTestB = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._AssetRecorder
  L2_2 = L1_2
  L1_2 = L1_2.Instantiate
  L3_2 = "UI/Dev/Debug/DebugLuaPage.prefab"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._SyncInstance = L1_2
  L1_2 = A0_2._AssetRecorder
  L2_2 = L1_2
  L1_2 = L1_2.Destroy
  L3_2 = A0_2._SyncInstance
  L1_2(L2_2, L3_2)
  A0_2._SyncInstance = nil
end
L0_1._LoadTestC = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._UnLoadTestC = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._AssetRecorder
  L2_2 = L1_2
  L1_2 = L1_2.InstantiateAsync
  L3_2 = "UI/Dev/Debug/DebugLuaPage.prefab"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._AsyncInstance = L1_2
end
L0_1._LoadTestD = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._AssetRecorder
  L2_2 = L1_2
  L1_2 = L1_2.Destroy
  L3_2 = A0_2._AsyncInstance
  L1_2(L2_2, L3_2)
  A0_2._AsyncInstance = nil
end
L0_1._UnLoadTestD = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._AssetRecorder
  L2_2 = L1_2
  L1_2 = L1_2.LoadAsync
  L3_2 = "UI/Dev/Debug/DebugLuaPage.prefab"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._AsyncAsset = L1_2
end
L0_1._LoadTestE = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._AssetRecorder
  L2_2 = L1_2
  L1_2 = L1_2.Dispose
  L1_2(L2_2)
  A0_2._AssetRecorder = nil
end
L0_1._UnLoadTestE = L1_1
return L0_1
