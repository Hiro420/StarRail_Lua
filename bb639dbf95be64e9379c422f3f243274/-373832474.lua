local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MaterialItemRightPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_show_bg_desc = true
  A0_2._enable_show_favorite = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_favorite
  L4_2 = A0_2._on_btn_favorite
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._item = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_img_item
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_img_lightcone
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_total_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._item
  L4_2 = L4_2.Count
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._item
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._item
  L4_2 = L4_2.Desc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_bg_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._item
  L4_2 = L4_2.BGDesc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._item
  L4_2 = L4_2.Desc
  L4_2 = L4_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_bg_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._item
  L4_2 = L4_2.BGDesc
  L4_2 = A0_2._item
  L4_2 = L4_2.BGDesc
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextID
  L5_2 = L5_2.empty
  L4_2 = L4_2 ~= nil and L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._item
  L4_2 = L4_2.Desc
  L4_2 = A0_2._item
  L4_2 = L4_2.Desc
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextID
  L5_2 = L5_2.empty
  L4_2 = A0_2._item
  L4_2 = L4_2.BGDesc
  L4_2 = A0_2._item
  L4_2 = L4_2.BGDesc
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextID
  L5_2 = L5_2.empty
  L4_2 = L4_2 ~= nil and L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_purpose
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_favorite_view
  L2_2(L3_2)
end
L0_1.setup_view_by_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._item = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_img_item
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_img_lightcone
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._item
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._item
  L4_2 = L4_2.Desc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_bg_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._item
  L4_2 = L4_2.BGDesc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._item
  L4_2 = L4_2.Desc
  L4_2 = L4_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_item_bg_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._item
  L4_2 = L4_2.BGDesc
  L4_2 = A0_2._item
  L4_2 = L4_2.BGDesc
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextID
  L5_2 = L5_2.empty
  L4_2 = L4_2 ~= nil and L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._item
  L4_2 = L4_2.Desc
  L4_2 = A0_2._item
  L4_2 = L4_2.Desc
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextID
  L5_2 = L5_2.empty
  L4_2 = A0_2._item
  L4_2 = L4_2.BGDesc
  L4_2 = A0_2._item
  L4_2 = L4_2.BGDesc
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextID
  L5_2 = L5_2.empty
  L4_2 = L4_2 ~= nil and L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_total_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_purpose
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_favorite_view
  L2_2(L3_2)
  L2_2 = A1_2.ItemMainType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemMainType
  L3_2 = L3_2.AvatarCard
  L2_2 = L2_2 ~= L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_amount_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_amount
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._item
  L5_2 = L5_2.Count
  L3_2(L4_2, L5_2)
end
L0_1.setup_view_by_item_display = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemPurposeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._item
  L2_2 = L2_2.Row
  L2_2 = L2_2.PurposeType
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.PurposeText
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_purpose
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_purpose
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1.setup_purpose = L1_1
function L1_1(A0_2, A1_2)
  A0_2._enable_show_favorite = A1_2
end
L0_1.set_enable_show_favorite = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.InventoryModule
  L2_2 = L1_2
  L1_2 = L1_2.EnableSetFavorite
  L3_2 = A0_2._item
  L3_2 = L3_2.ItemSubType
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = A0_2._enable_show_favorite
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_favorite
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._pre_checked
    if L2_2 then
      L2_2 = A0_2._pre_checked
      L3_2 = A0_2._item
      L3_2 = L3_2.IsFavorite
      if L2_2 == L3_2 then
        return
      end
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_favorite
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = A0_2._item
    L4_2 = L4_2.IsFavorite
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._item
    L2_2 = L2_2.IsFavorite
    A0_2._pre_checked = L2_2
  end
end
L0_1._setup_favorite_view = L1_1
function L1_1(A0_2, A1_2)
  A0_2._is_show_bg_desc = A1_2
end
L0_1.setup_show_bg_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._item
  L1_2 = L1_2.IsFavorite
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.InventoryModule
    L2_2 = L1_2
    L1_2 = L1_2.IsFavoriteFoodReachMax
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.UIManager
      L1_2 = L1_2.load_and_show
      L2_2 = "Ui.Common.Toast.PileToastCenterDialog"
      L3_2 = G
      L3_2 = L3_2.TextmapStatic
      L3_2 = L3_2.GetText
      L4_2 = "UIText_Consumable_BookmarkExceedTip"
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
  end
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.NetworkManager
    L1_2 = L1_2.OOGONDGGKMI
    L2_2 = L1_2
    L1_2 = L1_2.BBJEALHBFGM
    L3_2 = A0_2._item
    L3_2 = L3_2.ConfigID
    L4_2 = A0_2._item
    L4_2 = L4_2.IsFavorite
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.NIJNBICAPPA
    L3_2 = L3_2.CEPLHNKFCDP
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_favorite = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_favorite
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.on_unchoose = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._item = nil
end
L0_1._on_dispose = L1_1
return L0_1
