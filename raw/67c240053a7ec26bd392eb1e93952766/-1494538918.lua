local L0_1, L1_1
L0_1 = require
L1_1 = "Base.Auxiliary.AuxLoader.AuxAssetOperation"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.Tools.UtilEngineWrap"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AuxElement"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  A0_2._AssetPath = nil
  A0_2._AssetOpt = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._AssetOpt
  if nil ~= L1_2 then
    L1_2 = A0_2._AssetOpt
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._AssetOpt
    L1_2(L2_2)
    A0_2._AssetOpt = nil
  end
end
L0_1.Dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._AssetOpt
  if nil ~= L1_2 then
    L1_2 = A0_2._AssetOpt
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._AssetOpt
    L1_2(L2_2)
    A0_2._AssetOpt = nil
  end
end
L0_1.Clear = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = nil
  return L1_2
end
L0_1._GetAssetType = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._AssetPath
  if A1_2 ~= L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.Clear
    L2_2(L3_2)
    A0_2._AssetPath = A1_2
    L2_2 = G
    L2_2 = L2_2.new
    L3_2 = G
    L3_2 = L3_2.AuxAssetOperation
    L2_2 = L2_2(L3_2)
    A0_2._AssetOpt = L2_2
    L2_2 = A0_2._AssetOpt
    L3_2 = L2_2
    L2_2 = L2_2.Init
    L2_2(L3_2)
    L2_2 = A0_2._AssetOpt
    L3_2 = L2_2
    L2_2 = L2_2.SyncLoadAsset
    L4_2 = A0_2._AssetPath
    L6_2 = A0_2
    L5_2 = A0_2._GetAssetType
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = A0_2
    L2_2 = A0_2.OnAssetLoadEventHandle
    L4_2 = A0_2._AssetOpt
    L5_2 = nil
    L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.OnAssetLoadEventHandle
    L4_2 = A0_2._AssetOpt
    L5_2 = nil
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.SyncLoadAsset = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._AssetPath
  if A1_2 ~= L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.Clear
    L2_2(L3_2)
    A0_2._AssetPath = A1_2
    L2_2 = G
    L2_2 = L2_2.new
    L3_2 = G
    L3_2 = L3_2.AuxAssetOperation
    L2_2 = L2_2(L3_2)
    A0_2._AssetOpt = L2_2
    L2_2 = A0_2._AssetOpt
    L3_2 = L2_2
    L2_2 = L2_2.Init
    L2_2(L3_2)
    L2_2 = A0_2._AssetOpt
    L3_2 = L2_2
    L2_2 = L2_2.AsyncLoadAsset
    L4_2 = A0_2._AssetPath
    L6_2 = A0_2
    L5_2 = A0_2._GetAssetType
    L5_2 = L5_2(L6_2)
    L6_2 = A0_2
    L7_2 = A0_2.OnAssetLoadEventHandle
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L2_2 = A0_2._AssetOpt
    if nil ~= L2_2 then
      L2_2 = A0_2._AssetOpt
      L3_2 = L2_2
      L2_2 = L2_2.IsSuccess
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = A0_2._AssetOpt
        L3_2 = L2_2
        L2_2 = L2_2.IsFailed
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          goto lbl_42
        end
      end
      L3_2 = A0_2
      L2_2 = A0_2.OnAssetLoadEventHandle
      L4_2 = A0_2._AssetOpt
      L5_2 = nil
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  ::lbl_42::
end
L0_1.AsyncLoadAsset = L1_1
function L1_1(A0_2, A1_2, A2_2)
end
L0_1.OnAssetLoadEventHandle = L1_1
return L0_1
