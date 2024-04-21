local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Billboard.IconNPCTypePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "IconNPCTypePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "BillBoard_IconNPCTypePanel_FadeIn"
L2_1 = "BillBoard_IconNPCTypePanel_FadeOut"
L3_1 = "NPC_Billboard_IconContainer_Scale"
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIContextAssetLoader
  L1_2 = L1_2()
  A0_2._AssetLoader = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.IconNPCTypePanelBinder
  L1_2 = L1_2(L2_2)
  A0_2._binder = L1_2
  A0_2._is_icon_active = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L3_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.FloatValue
  A0_2._icon_size = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._IconPath
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._Refresh
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.set_light_weight_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ImgTypeIcon
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._IconPath
  if L1_2 ~= nil then
    L1_2 = A0_2._AssetLoader
    L2_2 = L1_2
    L1_2 = L1_2.AsyncLoadSpriteTo
    L3_2 = A0_2._binder
    L3_2 = L3_2.ImgTypeIcon
    L4_2 = A0_2._IconPath
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.SetupIconScale
  L3_2 = A0_2._icon_size
  L1_2(L2_2, L3_2)
end
L0_1._Refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._AssetLoader
  L2_2 = L1_2
  L1_2 = L1_2.ReleaseAll
  L1_2(L2_2)
  A0_2._AssetLoader = nil
  L1_2 = L0_1.super
  L1_2 = L1_2.dispose
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._IconPath = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._Refresh
  L2_2(L3_2)
end
L0_1.SetupIcon = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.NodeTypeIcon
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.NodeTypeIcon
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = A1_2
  L5_2 = A1_2
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.localScale = L3_2
end
L0_1.SetupIconScale = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.AniRoot
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._is_icon_active
  if A1_2 == L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.ImgTypeIcon
  L3_2 = L2_2
  L2_2 = L2_2.SetNativeSize
  L2_2(L3_2)
  A0_2._is_icon_active = A1_2
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.AniRoot
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.AniRoot
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
end
L0_1.PlayFadeIn = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.AniRoot
  if L2_2 == nil then
    return
  end
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.AniRoot
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.AniRoot
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.AniRoot
  L3_2 = L2_2
  L2_2 = L2_2.Sample
  L2_2(L3_2)
end
L0_1.reset_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_icon_active = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.AniRoot
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayToEnd
    L2_2 = A0_2._binder
    L2_2 = L2_2.AniRoot
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  end
end
L0_1.Close = L4_1
return L0_1
