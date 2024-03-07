local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSMainPostImagePanel"
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
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_prev
  L4_2 = A0_2._on_click_prev
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_click_next
  L1_2(L2_2, L3_2, L4_2)
  A0_2._prefab_img = nil
  A0_2._node_img_prefab = nil
  A0_2._img_post = nil
  A0_2._node_img_sticker = nil
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._post = A1_2
  A0_2._size = A2_2
  A0_2._is_show_zoom = A3_2
  L4_2 = A0_2._prefab_img
  if L4_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2.destroy_object
    L6_2 = A0_2._prefab_img
    L4_2(L5_2, L6_2)
    A0_2._prefab_img = nil
  end
  L5_2 = A0_2
  L4_2 = A0_2._generate_prefab
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._bind_img
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_img_size
  L4_2(L5_2)
  L4_2 = {}
  A0_2._img_table = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._generate_img_table
  L4_2(L5_2)
  A0_2._img_idx = 1
  L5_2 = A0_2
  L4_2 = A0_2._setup_img
  L6_2 = A0_2._img_idx
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_template
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_btn
  L4_2(L5_2)
end
L0_1.setup_view = L5_1
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
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_change_img
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_change_img
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_change_img_show = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._post
  L1_2 = L1_2.IsMyPost
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._instantiate_default_prefab
    L1_2(L2_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusTemplateExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._post
  L2_2 = L2_2.TemplateID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusSNSMainPostImagePanel : \228\184\141\229\173\152\229\156\168ID\228\184\186("
    L4_2 = A0_2._post
    L4_2 = L4_2.TemplateID
    L5_2 = ")\231\154\132\230\168\161\230\157\191"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
  end
  L2_2 = nil
  L3_2 = L1_2.PrefabPathNormal
  if L3_2 ~= "" then
    L4_2 = A0_2
    L3_2 = A0_2.sync_load_prefab
    L5_2 = L1_2.PrefabPathNormal
    L6_2 = A0_2._binder
    L6_2 = L6_2.prefab_load_img_post
    L6_2 = L6_2.transform
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  end
  if L2_2 ~= nil then
    A0_2._prefab_img = L2_2
  else
    L4_2 = A0_2
    L3_2 = A0_2._instantiate_default_prefab
    L3_2(L4_2)
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._size
  L3_2 = L4_1.Small
  if L2_2 == L3_2 then
    L1_2 = 0.3
  else
    L2_2 = A0_2._size
    L3_2 = L4_1.Medium
    if L2_2 == L3_2 then
      L1_2 = 0.32
    else
      L2_2 = A0_2._size
      L3_2 = L4_1.Large
      if L2_2 == L3_2 then
        L1_2 = 1
      end
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._img_table
  L3_2 = A0_2._post
  L3_2 = L3_2.ImgID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._post
  L1_2 = L1_2.IsMyPost
  if L1_2 then
    L1_2 = 0
    L2_2 = A0_2._post
    L2_2 = L2_2.SpRow
    L2_2 = L2_2.PostImgIDList
    L2_2 = L2_2.Length
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._post
      L5_2 = L5_2.SpRow
      L5_2 = L5_2.PostImgIDList
      L5_2 = L5_2[L4_2]
      L6_2 = A0_2._post
      L6_2 = L6_2.ImgID
      if L5_2 ~= L6_2 then
        L6_2 = table
        L6_2 = L6_2.insert
        L7_2 = A0_2._img_table
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    end
  end
  L1_2 = A0_2._post
  L1_2 = L1_2.ID
  L2_2 = L2_1
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.PlayerModule
    L1_2 = L1_2.PlayerData
    L1_2 = L1_2.HeroAvatarInfoData
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentHeroGender
    L1_2 = L1_2(L2_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.GenderType
    L2_2 = L2_2.GENDER_WOMAN
    if L1_2 == L2_2 then
      L2_2 = {}
      L3_2 = L3_1
      L2_2[1] = L3_2
      A0_2._img_table = L2_2
    end
  end
end
L0_1._generate_img_table = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusPostImgExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._img_table
  L3_2 = L3_2[A1_2]
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "HeliobusSNSMainPostImagePanel : \228\184\141\229\173\152\229\156\168ImgID\228\184\186("
    L5_2 = A0_2._img_table
    L5_2 = L5_2[A1_2]
    L6_2 = ")\231\154\132\229\155\190\231\137\135"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    L3_2 = nil
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._img_post
  L6_2 = L2_2.PostImgPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_img = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._node_img_sticker
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._img_idx
  L3_2 = A0_2._post
  L3_2 = L3_2 == 1 and L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_template = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_change_img
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_change_img
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._img_table
    L3_2 = #L3_2
    L3_2 = 1 < L3_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_btn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Heliobus.Common.HeliobusCommonZoomImageDialog"
  L3_2 = A0_2._post
  L4_2 = false
  L5_2 = A0_2._img_table
  L6_2 = A0_2._img_idx
  L5_2 = L5_2[L6_2]
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_click_btn_zoom_img = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._img_idx
  L1_2 = L1_2 - 1
  A0_2._img_idx = L1_2
  L1_2 = A0_2._img_idx
  if 1 <= L1_2 then
    L1_2 = A0_2._img_idx
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = A0_2._img_table
  L1_2 = #L1_2
  ::lbl_12::
  A0_2._img_idx = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_img
  L3_2 = A0_2._img_idx
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_template
  L1_2(L2_2)
end
L0_1._on_click_prev = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._img_idx
  L1_2 = L1_2 + 1
  A0_2._img_idx = L1_2
  L1_2 = A0_2._img_idx
  L2_2 = A0_2._img_table
  L2_2 = #L2_2
  if L1_2 <= L2_2 then
    L1_2 = A0_2._img_idx
    if L1_2 then
      goto lbl_13
    end
  end
  L1_2 = 1
  ::lbl_13::
  A0_2._img_idx = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_img
  L3_2 = A0_2._img_idx
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_template
  L1_2(L2_2)
end
L0_1._on_click_next = L5_1
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
