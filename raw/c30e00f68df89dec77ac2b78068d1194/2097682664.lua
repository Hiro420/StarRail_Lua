local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AvatarSkin.AvatarSkinShopPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkinShopPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AvatarSkinShopPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.AvatarUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._avatar_ui3d = L1_2
  A0_2._allow_camera_zoom_rotation_by_mouse = true
  A0_2._allow_camera_zoom_by_gamepad = true
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = SkinPageMode
  L2_2 = L2_2.Shop
  A0_2._mode = L2_2
  A0_2._shop_good = A1_2
  L2_2 = A0_2._shop_good
  L2_2 = L2_2.ItemID
  A0_2._skin_id = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarSkinExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._skin_id
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAvatar
  L5_2 = L2_2.AvatarID
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._avatar_data = L3_2
  L3_2 = A0_2._avatar_data
  if L3_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AvatarData
    L3_2 = L3_2.CreateGachaData
    L4_2 = L2_2.AvatarID
    L3_2 = L3_2(L4_2)
    A0_2._avatar_data = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._init_shop_skins
  L3_2(L4_2)
  L3_2 = A0_2._avatar_ui3d
  L4_2 = L3_2
  L3_2 = L3_2.setup_detail_page_type
  L5_2 = G
  L5_2 = L5_2.AvatarDetailPageType
  L5_2 = L5_2.Shop
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._avatar_ui3d
  L3_2 = L3_2.config
  L3_2.is_async_load = false
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.switch_avatar
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._skin_id
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.show_avatar_main_page_tab
  L3_2 = G
  L3_2 = L3_2.AvatarMainPageSubType
  L3_2 = L3_2.AvatarDetail
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar
  L3_2 = "Shop103Page"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._btn_back_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._btn_empty_close_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_prev
  L4_2 = A0_2._btn_prev_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._btn_next_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_content
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._close_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._close_callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._close_callback
      L2_2 = A0_2._close_callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_unload = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._close_callback = A1_2
  A0_2._close_callback_self = A2_2
end
L0_1.register_close_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  A0_2._skin_shop_list = L1_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueCommonExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "SkinShopID"
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.ShopModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.get_shop_by_id
  L5_2 = L2_2.Value
  L5_2 = L5_2.IntValue
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._skin_shop = L3_2
  L3_2 = A0_2._skin_shop
  L4_2 = L3_2
  L3_2 = L3_2.get_shop_goods
  L3_2 = L3_2(L4_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = A0_2._skin_shop_list
  L6_2 = A0_2._shop_good
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.ID
  L1_2[L4_2] = true
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.AvatarSkinExcelTable
    L9_2 = L9_2.GetData
    L10_2 = L8_2.ItemID
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2.AvatarID
    L10_2 = L1_2[L10_2]
    if L10_2 == nil then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = A0_2._skin_shop_list
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
      L10_2 = L9_2.AvatarID
      L1_2[L10_2] = true
    end
  end
  A0_2._skin_shop_index = 1
end
L0_1._init_shop_skins = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._avatar_data = A1_2
  A0_2._skin_id = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.skin_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._avatar_data
  L6_2 = L5_2
  L5_2 = L5_2.GetSkinName
  L7_2 = A0_2._skin_id
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_name
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.AvatarName
  L3_2(L4_2, L5_2)
end
L0_1.refresh_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.is_hiding_ui
  L3_2 = not A1_2
  if L2_2 == L3_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_empty_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetLightWeightActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = not A1_2
  A0_2.is_hiding_ui = L2_2
end
L0_1.show_content = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_mode
  L3_2 = A0_2._mode
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_refresh_ui
  L3_2 = A0_2.refresh_data
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_name
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.AvatarName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._skin_id
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._btn_back_onclick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_content
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._btn_empty_close_onclick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._skin_shop_index
  L1_2 = L1_2 - 1
  if L1_2 <= 0 then
    L2_2 = A0_2._skin_shop_list
    L1_2 = #L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_skin_avatar
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._btn_prev_onclick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._skin_shop_index
  L1_2 = L1_2 + 1
  L2_2 = A0_2._skin_shop_list
  L2_2 = #L2_2
  if L1_2 > L2_2 then
    L1_2 = 1
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_skin_avatar
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._btn_next_onclick = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._skin_shop_index
  if A1_2 == L2_2 then
    return
  end
  A0_2._skin_shop_index = A1_2
  L2_2 = A0_2._skin_shop_list
  L3_2 = A0_2._skin_shop_index
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.ItemID
  A0_2._skin_id = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarSkinExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._skin_id
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAvatar
  L5_2 = L2_2.AvatarID
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._avatar_data = L3_2
  L3_2 = A0_2._avatar_data
  if L3_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AvatarData
    L3_2 = L3_2.CreateGachaData
    L4_2 = L2_2.AvatarID
    L3_2 = L3_2(L4_2)
    A0_2._avatar_data = L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._avatar_data
  L6_2 = A0_2._skin_id
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._refresh_skin_avatar = L2_1
return L0_1
