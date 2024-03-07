local L0_1, L1_1
L0_1 = require
L1_1 = "Base.DataStruct.Dictionary"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.Auxiliary.AuxComponent.AuxImage"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AssetRecorder"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.Dictionary
  L1_2 = L1_2(L2_2)
  A0_2._InstanceIdToImageSpriteDic = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.Dictionary
  L1_2 = L1_2(L2_2)
  A0_2._InstanceIdToImageTextureDic = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.Dictionary
  L1_2 = L1_2(L2_2)
  A0_2._InstanceIdToImageMaterialDic = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.HashSet
  L1_2 = L1_2(L2_2)
  A0_2._LoadAssets = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.HashSet
  L1_2 = L1_2(L2_2)
  A0_2._AsyncLoadOperations = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.HashSet
  L1_2 = L1_2(L2_2)
  A0_2._InstantiateAssets = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.HashSet
  L1_2 = L1_2(L2_2)
  A0_2._AsyncInstantiateOperations = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._InstanceIdToImageSpriteDic
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
  L1_2 = A0_2._InstanceIdToImageTextureDic
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
  L1_2 = A0_2._InstanceIdToImageMaterialDic
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
  L1_2 = A0_2._LoadAssets
  L2_2 = L1_2
  L1_2 = L1_2.init
  L1_2(L2_2)
  L1_2 = A0_2._AsyncLoadOperations
  L2_2 = L1_2
  L1_2 = L1_2.init
  L1_2(L2_2)
  L1_2 = A0_2._InstantiateAssets
  L2_2 = L1_2
  L1_2 = L1_2.init
  L1_2(L2_2)
  L1_2 = A0_2._AsyncInstantiateOperations
  L2_2 = L1_2
  L1_2 = L1_2.init
  L1_2(L2_2)
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._InstanceIdToImageSpriteDic
  if nil ~= L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._ClearOneList
    L3_2 = A0_2._InstanceIdToImageSpriteDic
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._InstanceIdToImageSpriteDic
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._InstanceIdToImageSpriteDic
    L1_2(L2_2)
    A0_2._InstanceIdToImageSpriteDic = nil
  end
  L1_2 = A0_2._InstanceIdToImageTextureDic
  if nil ~= L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._ClearOneList
    L3_2 = A0_2._InstanceIdToImageTextureDic
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._InstanceIdToImageTextureDic
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._InstanceIdToImageTextureDic
    L1_2(L2_2)
    A0_2._InstanceIdToImageTextureDic = nil
  end
  L1_2 = A0_2._InstanceIdToImageMaterialDic
  if nil ~= L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._ClearOneList
    L3_2 = A0_2._InstanceIdToImageMaterialDic
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._InstanceIdToImageMaterialDic
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._InstanceIdToImageMaterialDic
    L1_2(L2_2)
    A0_2._InstanceIdToImageMaterialDic = nil
  end
  L1_2 = A0_2._InstantiateAssets
  if nil ~= L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._ReleaseOneAssetHashSet
    L3_2 = A0_2._InstantiateAssets
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._InstantiateAssets
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._InstantiateAssets
    L1_2(L2_2)
    A0_2._InstantiateAssets = nil
  end
  L1_2 = A0_2._AsyncInstantiateOperations
  if nil ~= L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._ReleaseOneAssetHashSet
    L3_2 = A0_2._AsyncInstantiateOperations
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._AsyncInstantiateOperations
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._AsyncInstantiateOperations
    L1_2(L2_2)
    A0_2._AsyncInstantiateOperations = nil
  end
  L1_2 = A0_2._LoadAssets
  if nil ~= L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._ReleaseOneAssetHashSet
    L3_2 = A0_2._LoadAssets
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._LoadAssets
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._LoadAssets
    L1_2(L2_2)
    A0_2._LoadAssets = nil
  end
  L1_2 = A0_2._AsyncLoadOperations
  if nil ~= L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._ReleaseOneAssetHashSet
    L3_2 = A0_2._AsyncLoadOperations
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._AsyncLoadOperations
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.delete
    L2_2 = A0_2._AsyncLoadOperations
    L1_2(L2_2)
    A0_2._AsyncLoadOperations = nil
  end
end
L0_1.Dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._ClearOneList
  L3_2 = A0_2._InstanceIdToImageSpriteDic
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._ClearOneList
  L3_2 = A0_2._InstanceIdToImageTextureDic
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._ClearOneList
  L3_2 = A0_2._InstanceIdToImageMaterialDic
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._ReleaseOneAssetHashSet
  L3_2 = A0_2._InstantiateAssets
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._ReleaseOneAssetHashSet
  L3_2 = A0_2._AsyncInstantiateOperations
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._ReleaseOneAssetHashSet
  L3_2 = A0_2._LoadAssets
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._ReleaseOneAssetHashSet
  L3_2 = A0_2._AsyncLoadOperations
  L1_2(L2_2, L3_2)
end
L0_1.ReleaseAll = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil ~= A1_2 then
    L3_2 = A1_2
    L2_2 = A1_2.ForEach
    function L4_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3
      L4_3 = A1_3
      L3_3 = A1_3.Dispose
      L3_3(L4_3)
      L3_3 = G
      L3_3 = L3_3.delete
      L4_3 = A1_3
      L3_3(L4_3)
      A1_3 = nil
    end
    L2_2(L3_2, L4_2)
    L3_2 = A1_2
    L2_2 = A1_2.Clear
    L2_2(L3_2)
  end
end
L0_1._ClearOneList = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if nil ~= A1_2 and nil ~= A2_2 then
    L4_2 = A1_2
    L3_2 = A1_2.GetInstanceID
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._InstanceIdToImageSpriteDic
    L5_2 = L4_2
    L4_2 = L4_2.Value
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if nil == L4_2 then
      L5_2 = G
      L5_2 = L5_2.new
      L6_2 = G
      L6_2 = L6_2.AuxImage
      L5_2 = L5_2(L6_2)
      L4_2 = L5_2
      L6_2 = L4_2
      L5_2 = L4_2.Init
      L5_2(L6_2)
    end
    L6_2 = L4_2
    L5_2 = L4_2.SetImage
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.SetImagePath
    L7_2 = A2_2
    L5_2(L6_2, L7_2)
  end
end
L0_1.SetImageSprite = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.GetComponentByPath
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = G
  L7_2 = L7_2.UtilEngineWrap
  L7_2 = L7_2.GetImageType
  L7_2, L8_2 = L7_2()
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2.SetImageSprite
  L7_2 = L4_2
  L8_2 = A3_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1.SetImageSpriteByPath = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A3_2
  L5_2 = A3_2.GetInstanceID
  L5_2 = L5_2(L6_2)
  L7_2 = A2_2
  L6_2 = A2_2.Value
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  if nil == L6_2 then
    L7_2 = G
    L7_2 = L7_2.new
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.Init
    L7_2(L8_2)
    L8_2 = A2_2
    L7_2 = A2_2.Add
    L9_2 = L5_2
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
  return L6_2
end
L0_1._AddOrGetImpl = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if nil ~= A1_2 and nil ~= A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._AddOrGetImpl
    L5_2 = G
    L5_2 = L5_2.AuxImageSprite
    L6_2 = A0_2._InstanceIdToImageSpriteDic
    L7_2 = A1_2
    L8_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L5_2 = L3_2
    L4_2 = L3_2.load_sprite_to
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.load_sprite_to = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.AssertFormat
  L4_2 = A2_2 ~= nil and A2_2 ~= ""
  L5_2 = "async_load_sprite_to path: "
  L6_2 = A2_2
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._AddOrGetImpl
  L5_2 = G
  L5_2 = L5_2.AuxImageSprite
  L6_2 = A0_2._InstanceIdToImageSpriteDic
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L5_2 = L3_2
  L4_2 = L3_2.async_load_sprite_to
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.async_load_sprite_to = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if nil ~= A1_2 and nil ~= A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._AddOrGetImpl
    L5_2 = G
    L5_2 = L5_2.AuxImageTexture
    L6_2 = A0_2._InstanceIdToImageTextureDic
    L7_2 = A1_2
    L8_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L5_2 = L3_2
    L4_2 = L3_2.load_texture_to
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.load_texture_to = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._AddOrGetImpl
  L5_2 = G
  L5_2 = L5_2.AuxImageTexture
  L6_2 = A0_2._InstanceIdToImageTextureDic
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L5_2 = L3_2
  L4_2 = L3_2.AsyncLoadTextureTo
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.AsyncLoadTextureTo = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if nil ~= A1_2 and nil ~= A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._AddOrGetImpl
    L5_2 = G
    L5_2 = L5_2.AuxImageMaterial
    L6_2 = A0_2._InstanceIdToImageMaterialDic
    L7_2 = A1_2
    L8_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L5_2 = L3_2
    L4_2 = L3_2.load_material_to
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.load_material_to = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._AddOrGetImpl
  L5_2 = G
  L5_2 = L5_2.AuxImageMaterial
  L6_2 = A0_2._InstanceIdToImageMaterialDic
  L7_2 = A1_2
  L8_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L5_2 = L3_2
  L4_2 = L3_2.AsyncLoadMaterialTo
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.AsyncLoadMaterialTo = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A1_2
  L3_2 = A1_2.GetInstanceID
  L3_2 = L3_2(L4_2)
  L5_2 = A2_2
  L4_2 = A2_2.Value
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if nil ~= L4_2 then
    L6_2 = L4_2
    L5_2 = L4_2.Dispose
    L5_2(L6_2)
    L5_2 = G
    L5_2 = L5_2.delete
    L6_2 = L4_2
    L5_2(L6_2)
    L6_2 = A2_2
    L5_2 = A2_2.Remove
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._ReleaseImpl = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsUnityObjectNotNull
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._ReleaseImpl
    L4_2 = A1_2
    L5_2 = A0_2._InstanceIdToImageSpriteDic
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.release_sprite_in = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsUnityObjectNotNull
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._ReleaseImpl
    L4_2 = A1_2
    L5_2 = A0_2._InstanceIdToImageTextureDic
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.async_release_texture_in = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsUnityObjectNotNull
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._ReleaseImpl
    L4_2 = A1_2
    L5_2 = A0_2._InstanceIdToImageMaterialDic
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.async_release_material_in = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if nil == A2_2 then
    L3_2 = G
    L3_2 = L3_2.ImportCsToLua
    A2_2 = L3_2.GameObjectType
  end
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.AuxAssetOperation
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.Init
  L4_2(L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.SyncLoadAsset
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.IsSuccess
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = A0_2._LoadAssets
    L5_2 = L4_2
    L4_2 = L4_2.add
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L5_2 = L3_2
    L4_2 = L3_2.Dispose
    L4_2(L5_2)
    L4_2 = G
    L4_2 = L4_2.delete
    L5_2 = L3_2
    L4_2(L5_2)
    L3_2 = nil
  end
  L5_2 = L3_2
  L4_2 = L3_2.GetAssetObject
  return L4_2(L5_2)
end
L0_1.Load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if nil == A2_2 then
    L3_2 = G
    L3_2 = L3_2.ImportCsToLua
    A2_2 = L3_2.GameObjectType
  end
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.AuxAssetOperation
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.Init
  L4_2(L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.AsyncLoadAsset
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.IsFailed
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = A0_2._AsyncLoadOperations
    L5_2 = L4_2
    L4_2 = L4_2.add
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L5_2 = L3_2
    L4_2 = L3_2.Dispose
    L4_2(L5_2)
    L4_2 = G
    L4_2 = L4_2.delete
    L5_2 = L3_2
    L4_2(L5_2)
    L3_2 = nil
  end
  return L3_2
end
L0_1.LoadAsync = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._LoadAssets
  L3_2 = L2_2
  L2_2 = L2_2.for_each
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L3_3 = A0_3
    L2_3 = A0_3.GetAssetObject
    L2_3 = L2_3(L3_3)
    if A1_3 == L2_3 then
      L2_3 = false
      return L2_3
    end
    L2_3 = true
    return L2_3
  end
  L5_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._LoadAssets
  L4_2 = L3_2
  L3_2 = L3_2.remove
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L2_2
    L3_2 = L2_2.Dispose
    L3_2(L4_2)
    L3_2 = G
    L3_2 = L3_2.delete
    L4_2 = L2_2
    L3_2(L4_2)
    L2_2 = nil
    return
  end
  L3_2 = A0_2._LoadAssets
  L4_2 = L3_2
  L3_2 = L3_2.remove
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A1_2
    L3_2 = A1_2.Dispose
    L3_2(L4_2)
    L3_2 = G
    L3_2 = L3_2.delete
    L4_2 = A1_2
    L3_2(L4_2)
    A1_2 = nil
    return
  end
  L3_2 = A0_2._AsyncLoadOperations
  L4_2 = L3_2
  L3_2 = L3_2.remove
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A1_2
    L3_2 = A1_2.Dispose
    L3_2(L4_2)
    L3_2 = G
    L3_2 = L3_2.delete
    L4_2 = A1_2
    L3_2(L4_2)
    A1_2 = nil
    return
  end
  L3_2 = G
  L3_2 = L3_2.AssetLoader
  L3_2 = L3_2.ReleaseAsset
  L4_2 = A1_2
  L3_2(L4_2)
end
L0_1.Unload = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if nil == A2_2 then
    L3_2 = G
    L3_2 = L3_2.ImportCsToLua
    A2_2 = L3_2.GameObjectType
  end
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.AuxAssetOperation
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.Init
  L4_2(L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.SyncInstanceObject
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.IsFailed
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = A0_2._InstantiateAssets
    L5_2 = L4_2
    L4_2 = L4_2.add
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  else
    L5_2 = L3_2
    L4_2 = L3_2.Dispose
    L4_2(L5_2)
    L4_2 = G
    L4_2 = L4_2.delete
    L5_2 = L3_2
    L4_2(L5_2)
    L3_2 = nil
  end
  L5_2 = L3_2
  L4_2 = L3_2.GetInstanceObject
  return L4_2(L5_2)
end
L0_1.Instantiate = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if nil == A2_2 then
    A2_2 = false
  end
  if A1_2 == nil then
    return
  end
  L4_2 = A1_2
  L3_2 = A1_2.SetImmediateDestroy
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._InstantiateAssets
  L4_2 = L3_2
  L3_2 = L3_2.remove
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A1_2
    L3_2 = A1_2.Dispose
    L3_2(L4_2)
    L3_2 = G
    L3_2 = L3_2.delete
    L4_2 = A1_2
    L3_2(L4_2)
    A1_2 = nil
    return
  end
  L3_2 = A0_2._AsyncInstantiateOperations
  L4_2 = L3_2
  L3_2 = L3_2.remove
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = A1_2
    L3_2 = A1_2.Dispose
    L3_2(L4_2)
    L3_2 = G
    L3_2 = L3_2.delete
    L4_2 = A1_2
    L3_2(L4_2)
    A1_2 = nil
    return
  end
end
L0_1.Destroy = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.for_each
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L3_3 = A0_3
    L2_3 = A0_3.Dispose
    L2_3(L3_3)
    L2_3 = G
    L2_3 = L2_3.delete
    L3_3 = A0_3
    L2_3(L3_3)
    A0_3 = nil
    L2_3 = true
    return L2_3
  end
  L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L2_2 = A1_2.clear
  L2_2(L3_2)
end
L0_1._ReleaseOneAssetHashSet = L1_1
return L0_1
