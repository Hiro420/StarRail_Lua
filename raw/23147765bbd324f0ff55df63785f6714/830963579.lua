local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PhotoGraphModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "GachaWaterMarkPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
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
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetLogoConfig
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_logo
    L5_2 = L1_2.LogoIconPath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1._setup_logo = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2.NickName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_uid
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2.UserID
  L2_2(L3_2, L4_2)
end
L1_1._setup_name_uid = L2_1
return L1_1
