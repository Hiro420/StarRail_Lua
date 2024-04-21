local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSPostPreviewImagePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "Activity_Heliobus_PostStateFemale_PostID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.UintValue
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "Activity_Heliobus_PostStateFemale_PostImg"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.UintValue
L4_1 = {}
L4_1.Small = 1
L4_1.Medium = 2
L4_1.Large = 3
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_zoom_img
  L4_2 = A0_2._on_click_btn_zoom_img
  L1_2(L2_2, L3_2, L4_2)
  A0_2._prefab_img = nil
  A0_2._node_img_prefab = nil
  A0_2._img_post = nil
  A0_2._node_img_sticker = nil
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._img_post
  L2_2 = L2_2.transform
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = A1_2
  L5_2 = A1_2
  L6_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.localScale = L3_2
end
L0_1.set_size = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._node_img_sticker
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_stick_show = L5_1
function L5_1(A0_2, A1_2)
  A0_2._post_id = A1_2
end
L0_1.set_post_id = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._template_row = A1_2
  A0_2._size = A2_2
  A0_2._is_show_zoom = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._generate_prefab
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._bind_img
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_img
  L6_2 = A0_2._img_idx
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_img_size
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_btn
  L4_2(L5_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._prefab_img
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.destroy_object
    L3_2 = A0_2._prefab_img
    L1_2(L2_2, L3_2)
    A0_2._prefab_img = nil
  end
  L1_2 = nil
  L2_2 = A0_2._template_row
  L2_2 = L2_2.PrefabPathNormal
  if L2_2 ~= "" then
    L3_2 = A0_2
    L2_2 = A0_2.sync_load_prefab
    L4_2 = A0_2._template_row
    L4_2 = L4_2.PrefabPathNormal
    L5_2 = A0_2._binder
    L5_2 = L5_2.prefab_load_img_post
    L5_2 = L5_2.transform
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L1_2 = L2_2
  end
  if L1_2 ~= nil then
    A0_2._prefab_img = L1_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._instantiate_default_prefab
    L2_2(L3_2)
  end
end
L0_1._generate_prefab = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_load_img_post
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_load_img_post
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._prefab_img = L1_2
end
L0_1._instantiate_default_prefab = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2._prefab_img
  L3_2 = ""
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_img_prefab = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._prefab_img
  L4_2 = "Image"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._img_post = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeFind
  L2_2 = A0_2._prefab_img
  L3_2 = "InformationPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._node_img_sticker = L1_2
end
L0_1._bind_img = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = nil
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.PlayerModule
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.HeroAvatarInfoData
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentHeroGender
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._post_id
  if L3_2 then
    L3_2 = A0_2._post_id
    L4_2 = L2_1
    if L3_2 == L4_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.GenderType
      L3_2 = L3_2.GENDER_WOMAN
      if L2_2 == L3_2 then
        L1_2 = L3_1
    end
  end
  else
    L3_2 = A0_2._template_row
    L1_2 = L3_2.PostImgID
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusPostImgExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "HeliobusSNSPostPreviewImagePanel : \228\184\141\229\173\152\229\156\168ImgID\228\184\186("
    L6_2 = A0_2._template_row
    L6_2 = L6_2.PostImgID
    L7_2 = ")\231\154\132\229\155\190\231\137\135"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    L4_2 = nil
    return L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._img_post
  L7_2 = L3_2.PostImgPath
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_img = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._size
  L3_2 = L4_1.Small
  if L2_2 == L3_2 then
    L1_2 = 0.52
  else
    L2_2 = A0_2._size
    L3_2 = L4_1.Medium
    if L2_2 == L3_2 then
      L1_2 = 0.4
    end
  end
  L2_2 = A0_2._img_post
  L2_2 = L2_2.transform
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L4_2 = L1_2
  L5_2 = L1_2
  L6_2 = 1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.localScale = L3_2
end
L0_1._set_img_size = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_zoom_img
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_zoom_img
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._is_show_zoom
    if not L3_2 then
      L3_2 = false
    end
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_btn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Heliobus.Common.HeliobusCommonZoomImageDialog"
  L3_2 = A0_2._template_row
  L1_2(L2_2, L3_2)
end
L0_1._on_click_btn_zoom_img = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._prefab_img
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.destroy_object
    L3_2 = A0_2._prefab_img
    L1_2(L2_2, L3_2)
    A0_2._prefab_img = nil
  end
end
L0_1._on_unload = L5_1
return L0_1
