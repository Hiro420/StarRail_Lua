local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PhotoGraphModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PhotoGraphWaterMarkPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhotoGraphRefreshWaterMark
  L4_2 = A0_2._on_fresh_water_mark
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_logo
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_name_uid
  L1_2(L2_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rect_root
  return L1_2
end
L1_1.get_rect_root = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L1_2(L2_2)
end
L1_1._on_fresh_water_mark = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1.PhotoGraphSettings
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PhotoGraphSettingItemType
  L2_2 = L2_2.HideLogo
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.IsEnable
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_logo
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    return
  end
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetLogoConfig
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_logo
    L6_2 = L2_2.LogoIconPath
    L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1._setup_logo = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.PhotoGraphSettings
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PhotoGraphSettingItemType
  L2_2 = L2_2.HideUID
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.IsEnable
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_uid
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_name_deco
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.PlayerModule
  L2_2 = L2_2.PlayerData
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_name
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2.NickName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_uid
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2.UserID
  L3_2(L4_2, L5_2)
end
L1_1._setup_name_uid = L2_1
return L1_1
