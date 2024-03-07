local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.RogueCommon.Shop.Buff.Components.RogueBuffShopRightPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueBuffShopRightPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Rogue_BuffLevelUp_Btn"
L2_1 = "UIText_Rogue_BuffLevelUp_Hint5"
L3_1 = "UIText_Rogue_BuffLevelUp_Hint4"
L4_1 = "UIText_RogueDLC_BuffShop_Button_UnSelect"
L5_1 = "UIText_RogueDLC_MiracleShop_Button_Selected"
L6_1 = "UIText_RogueDLC_MiracleShop_OwenRepeat"
L7_1 = "UIText_RogueDLC_MiracleShop_SoldOut"
L8_1 = {}
L8_1.White = "#FFFFFF"
L8_1.Red = "#C84A32"
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._rogue_buff_data
  if L1_2 ~= nil then
    L1_2 = A0_2._rogue_buff_data
    L2_2 = L1_2
    L1_2 = L1_2.GetExtraEffectRowIDs
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.Length
    if 0 < L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_current_desc
      L3_2 = L2_2
      L2_2 = L2_2.get_first_selected_object
      return L2_2(L3_2)
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L9_1
function L9_1(A0_2)
  local L1_2
end
L0_1._on_load = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._shop_data = A2_2
  A0_2._shop_item_data = A1_2
  L3_2 = A1_2.RogueBuffData
  A0_2._rogue_buff_data = L3_2
  L3_2 = A0_2._shop_item_data
  if L3_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._cus_set_active
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._cus_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._rogue_buff_data
  L4_2 = L3_2
  L3_2 = L3_2.GetMazeBuffRow
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2._rogue_buff_data
  L5_2 = L4_2
  L4_2 = L4_2.GetRogueBuffRarity
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_buff_icon
  L8_2 = L3_2.BuffIcon
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_buff_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L3_2.BuffName
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_buff_type
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A0_2._rogue_buff_data
  L8_2 = L7_2
  L7_2 = L7_2.GetRogueBuffTypeRow
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.RogueBuffTypeTextmapID
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_buff_rarity
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = L4_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_bg_normal_table
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_line_rarity
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetColor
  L7_2 = G
  L7_2 = L7_2.RogueUtils
  L7_2 = L7_2.get_rogue_buff_rarity_color
  L8_2 = L4_2
  L7_2, L8_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_cur_desc
  L7_2 = L3_2
  L8_2 = A0_2._rogue_buff_data
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_next_desc
  L5_2(L6_2)
end
L0_1.setup_view = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.non_btn_roots
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._cus_set_active = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_current_desc
  L4_2 = L3_2
  L3_2 = L3_2.setup_desc
  L5_2 = A1_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A2_2
  L3_2 = A2_2.GetExtraEffectRowIDs
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Length
  L3_2 = 0 < L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_current_desc
  L5_2 = L4_2
  L4_2 = L4_2.setup_btn_enable
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_current_desc
  L5_2 = L4_2
  L4_2 = L4_2.register_callback
  L6_2 = A0_2._on_btn_desc_detail
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  if L3_2 then
    L4_2 = A0_2._owner
    L5_2 = L4_2
    L4_2 = L4_2.setup_short_cut_hint_panel
    L6_2 = {}
    L7_2 = "ActionGroup_Scroll"
    L8_2 = "ActionGroup_BuffDetail_RT"
    L9_2 = "ActionGroup_Return"
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._owner
    L5_2 = L4_2
    L4_2 = L4_2.setup_short_cut_hint_panel
    L6_2 = {}
    L7_2 = "ActionGroup_Scroll"
    L8_2 = "ActionGroup_Return"
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_cur_desc = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_arrow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_next_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_next_desc = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._rogue_buff_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._rogue_buff_data
  L2_2 = L1_2
  L1_2 = L1_2.GetExtraEffectRowIDs
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Length
  if 0 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Common.ExtraDesc.ExtraDescListDialog"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_desc_detail = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._rogue_buff_data
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = A0_2._rogue_buff_data
  L4_2 = L4_2.BuffID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._shop_data
  L3_2 = L2_2
  L2_2 = L2_2.SendBuyRogueShopBuffCsReq
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.NIJNBICAPPA
  L4_2 = L4_2.CGOBMFCMJMG
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_enhance = L9_1
return L0_1
