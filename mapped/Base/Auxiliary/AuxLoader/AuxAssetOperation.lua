local L0_1, L1_1
L0_1 = require
L1_1 = "Base.EventHandle.AddOnceEventDispatch"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AuxAssetOperation"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._NativeAssetOpt = nil
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AddOnceEventDispatch
  L1_2 = L1_2(L2_2)
  A0_2._AssetOptDispatch = L1_2
  A0_2._AssetObject = nil
  A0_2._IsSyncLoad = true
  A0_2._IsNeedInstance = false
  A0_2._IsAsyncInstance = false
  A0_2._ObjectInsReq = nil
  A0_2._InstanceObject = nil
  A0_2._NativeEventHandle = nil
  A0_2._IsImmediateDestroy = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._AssetOptDispatch
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
end
L0_1.Init = L1_1
function L1_1(A0_2, A1_2)
  A0_2._IsImmediateDestroy = A1_2
end
L0_1.SetImmediateDestroy = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._InstanceObject
  if nil ~= L1_2 then
    L1_2 = A0_2._IsImmediateDestroy
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.UnityEngine
      L1_2 = L1_2.Object
      L1_2 = L1_2.DestroyImmediate
      L2_2 = A0_2._InstanceObject
      L1_2(L2_2)
    else
      L1_2 = CS
      L1_2 = L1_2.UnityEngine
      L1_2 = L1_2.Object
      L1_2 = L1_2.Destroy
      L2_2 = A0_2._InstanceObject
      L1_2(L2_2)
    end
    A0_2._InstanceObject = nil
  end
  L1_2 = A0_2._AssetOptDispatch
  L2_2 = L1_2
  L1_2 = L1_2.Dispose
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.delete
  L2_2 = A0_2._AssetOptDispatch
  L1_2(L2_2)
  A0_2._AssetOptDispatch = nil
  L1_2 = A0_2._NativeAssetOpt
  if nil ~= L1_2 then
    L1_2 = A0_2._NativeAssetOpt
    L1_2 = L1_2.AssetOperationModel
    L2_2 = L1_2
    L1_2 = L1_2.RemoveAssetLoadedHandle
    L3_2 = A0_2._NativeEventHandle
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.AssetLoader
    L1_2 = L1_2.CancleAyscLoad
    L2_2 = A0_2._NativeAssetOpt
    L1_2(L2_2)
    A0_2._NativeAssetOpt = nil
  end
  L1_2 = A0_2._ObjectInsReq
  if L1_2 ~= nil then
    L1_2 = A0_2._ObjectInsReq
    L2_2 = L1_2
    L1_2 = L1_2.Abort
    L1_2(L2_2)
  end
  L1_2 = A0_2._AssetObject
  if nil ~= L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.AssetLoader
    L1_2 = L1_2.ReleaseAsset
    L2_2 = A0_2._AssetObject
    L1_2(L2_2)
    A0_2._AssetObject = nil
  end
end
L0_1.Dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._IsSyncLoad = true
  L3_2 = G
  L3_2 = L3_2.AssetLoader
  L3_2 = L3_2.SyncLoadAsset
  L4_2 = A1_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._AssetObject = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._OnAssetLoadComplete
  L3_2(L4_2)
end
L0_1.SyncLoadAsset = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  A0_2._IsSyncLoad = false
  L5_2 = A0_2._AssetOptDispatch
  L6_2 = L5_2
  L5_2 = L5_2.AddEventHandle
  L7_2 = A3_2
  L8_2 = A4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = G
  L5_2 = L5_2.AssetLoader
  L5_2 = L5_2.AsyncLoadAsset
  L6_2 = A1_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._NativeAssetOpt = L5_2
  L6_2 = A0_2
  L5_2 = A0_2.AddNativeEventHandle
  L5_2(L6_2)
end
L0_1.AsyncLoadAsset = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._IsNeedInstance = true
  A0_2._IsAsyncInstance = false
  L4_2 = A0_2
  L3_2 = A0_2.SyncLoadAsset
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.SyncInstanceObject = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._IsNeedInstance = true
  A0_2._IsAsyncInstance = true
  L6_2 = A0_2
  L5_2 = A0_2.AsyncLoadAsset
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1.AsyncInstanceObject = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._NativeAssetOpt
  if nil ~= L1_2 then
    L1_2 = A0_2._NativeAssetOpt
    L2_2 = L1_2
    L1_2 = L1_2.GetAssetObject
    L1_2 = L1_2(L2_2)
    if nil ~= L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._OnAssetLoadComplete
      L1_2(L2_2)
    else
      L1_2 = A0_2._NativeAssetOpt
      if nil ~= L1_2 then
        function L1_2(A0_3)
          local L1_3, L2_3
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3._OnAssetLoadComplete
          L1_3(L2_3)
        end
        A0_2._NativeEventHandle = L1_2
        L1_2 = A0_2._NativeAssetOpt
        L1_2 = L1_2.AssetOperationModel
        L2_2 = L1_2
        L1_2 = L1_2.AddAssetLoadedHandle
        L3_2 = A0_2._NativeEventHandle
        L1_2(L2_2, L3_2)
      end
    end
  else
    L2_2 = A0_2
    L1_2 = A0_2._OnAssetLoadComplete
    L1_2(L2_2)
  end
end
L0_1.AddNativeEventHandle = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._IsSyncLoad
  if L1_2 then
    L1_2 = A0_2._AssetObject
    if nil ~= L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.LuaToCs
      L1_2 = L1_2.Instantiate
      L2_2 = A0_2._AssetObject
      L1_2 = L1_2(L2_2)
      A0_2._InstanceObject = L1_2
    end
  else
    L1_2 = A0_2._NativeAssetOpt
    if nil ~= L1_2 then
      L1_2 = A0_2._NativeAssetOpt
      L2_2 = L1_2
      L1_2 = L1_2.GetAssetObject
      L1_2 = L1_2(L2_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.LuaToCs
      L2_2 = L2_2.Instantiate
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      A0_2._InstanceObject = L2_2
      L1_2 = nil
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._OnAssetInstanceComplete
  L1_2(L2_2)
end
L0_1.InstanceObject = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.GetAssetObject
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._OnAssetInstanceComplete
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._ObjectInsReq
  if L2_2 ~= nil then
    L2_2 = A0_2._ObjectInsReq
    L3_2 = L2_2
    L2_2 = L2_2.Abort
    L2_2(L3_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.LuaToCs
  L2_2 = L2_2.InstantiateAsync
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._ObjectInsReq = L2_2
  L2_2 = A0_2._ObjectInsReq
  L3_2 = L2_2
  L2_2 = L2_2.completed
  L4_2 = "+"
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._OnAsyncInstanceObjectCompleted
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._AsyncInstanceObject = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._ObjectInsReq
  if L1_2 ~= nil then
    L1_2 = A0_2._ObjectInsReq
    L1_2 = L1_2.Instance
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._ObjectInsReq
  L1_2 = L1_2.Instance
  A0_2._InstanceObject = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._OnAssetInstanceComplete
  L1_2(L2_2)
end
L0_1._OnAsyncInstanceObjectCompleted = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._IsNeedInstance
  if L1_2 then
    L1_2 = A0_2._IsAsyncInstance
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.AssetLoader
      L1_2 = L1_2.USE_ASYNC_INSTANTIATE
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._AsyncInstanceObject
        L1_2(L2_2)
    end
    else
      L2_2 = A0_2
      L1_2 = A0_2.InstanceObject
      L1_2(L2_2)
    end
  else
    L1_2 = A0_2._AssetOptDispatch
    L2_2 = L1_2
    L1_2 = L1_2.DispatchEvent
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._OnAssetLoadComplete = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._AssetOptDispatch
  L2_2 = L1_2
  L1_2 = L1_2.DispatchEvent
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._OnAssetInstanceComplete = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = false
  L2_2 = A0_2._IsNeedInstance
  if L2_2 then
    L2_2 = A0_2._InstanceObject
    if nil ~= L2_2 then
      L1_2 = true
    end
  else
    L2_2 = A0_2._IsSyncLoad
    if L2_2 then
      L2_2 = A0_2._AssetObject
      if nil ~= L2_2 then
        L1_2 = true
      end
    else
      L2_2 = A0_2._NativeAssetOpt
      if nil ~= L2_2 then
        L2_2 = A0_2._NativeAssetOpt
        L3_2 = L2_2
        L2_2 = L2_2.GetAssetObject
        L2_2 = L2_2(L3_2)
        if nil ~= L2_2 then
          L1_2 = true
        end
      end
    end
  end
  return L1_2
end
L0_1.IsSuccess = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = false
  L2_2 = A0_2._IsSyncLoad
  if L2_2 then
    L2_2 = A0_2._AssetObject
    if nil == L2_2 then
      L1_2 = true
    end
  else
    L2_2 = A0_2._NativeAssetOpt
    if nil ~= L2_2 then
      L2_2 = A0_2._NativeAssetOpt
      L2_2 = L2_2.AssetOperationModel
      L3_2 = L2_2
      L2_2 = L2_2.IsFailed
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    end
  end
  return L1_2
end
L0_1.IsFailed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = nil
  L2_2 = A0_2._IsSyncLoad
  if L2_2 then
    L2_2 = A0_2._AssetObject
    if nil ~= L2_2 then
      L1_2 = A0_2._AssetObject
    end
  else
    L2_2 = A0_2._NativeAssetOpt
    if nil ~= L2_2 then
      L2_2 = A0_2._NativeAssetOpt
      L3_2 = L2_2
      L2_2 = L2_2.GetAssetObject
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    end
  end
  return L1_2
end
L0_1.GetAssetObject = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._InstanceObject
  return L1_2
end
L0_1.GetInstanceObject = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = nil
  L2_2 = A0_2._InstanceObject
  if nil ~= L2_2 then
    L2_2 = A0_2._InstanceObject
    L1_2 = L2_2.transform
  end
  return L1_2
end
L0_1.GetInstanceTransform = L1_1
return L0_1
