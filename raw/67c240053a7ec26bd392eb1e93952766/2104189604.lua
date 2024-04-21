local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Base.Auxiliary.AuxLoader.AuxAssetOperation"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.Tools.UtilEngineWrap"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AuxImageTexture"
L2_1 = G
L2_1 = L2_1.AuxElement
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._Image = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.Init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._Image = nil
  L1_2 = L0_1.super
  L1_2 = L1_2.Dispose
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.Dispose = L1_1
function L1_1(A0_2, A1_2)
  A0_2._Image = A1_2
end
L0_1.SetImage = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.super
  L1_2 = L1_2.Clear
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.Clear = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.SyncLoadAsset
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.SetImagePath = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = typeof
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Texture
  return L1_2(L2_2)
end
L0_1._GetAssetType = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._Image
  if nil ~= L3_2 and nil ~= A1_2 then
    L4_2 = A1_2
    L3_2 = A1_2.IsSuccess
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = A0_2._Image
      L3_2 = L3_2.material
      L5_2 = A1_2
      L4_2 = A1_2.GetAssetObject
      L4_2 = L4_2(L5_2)
      L3_2.mainTexture = L4_2
    end
  end
end
L0_1.OnAssetLoadEventHandle = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.SetImage
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.SyncLoadAsset
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.load_texture_to = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.SetImage
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.AsyncLoadAsset
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.AsyncLoadTextureTo = L1_1
return L0_1
