local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.AvatarSkinItemInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkinItemInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  A0_2._is_instantiate_rarity = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_button_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._item = A1_2
  A0_2._is_only_display = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_avatar_icon
  L6_2 = A0_2._item
  L6_2 = L6_2.Row
  L6_2 = L6_2.ItemAvatarIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.InventoryModule
  L3_2 = L3_2.GetItemRarityConfig
  L4_2 = A0_2._item
  L4_2 = L4_2.Rarity
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.image_rarity
  L7_2 = L3_2.FrameItemRarityPath
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.AvatarSkin.AvatarSkinMainPage"
  L3_2 = SkinPageMode
  L3_2 = L3_2.Activity
  L4_2 = A0_2._item
  L4_2 = L4_2.Row
  L4_2 = L4_2.ID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_button_click = L1_1
return L0_1
