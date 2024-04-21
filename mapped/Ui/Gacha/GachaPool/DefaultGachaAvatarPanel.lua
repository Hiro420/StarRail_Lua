local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaPool.DefaultGachaAvatarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DefaultGachaAvatarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._avatar_data = A1_2
end
L0_1.set_data = L1_1
function L1_1(A0_2, A1_2)
  A0_2._gacha_pool_data = A1_2
end
L0_1.set_pool_data = L1_1
function L1_1(A0_2, A1_2)
  A0_2._disable_btn_detail = A1_2
end
L0_1.set_disable_btn_detail = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_detail
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatar_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_damage_type
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_promotion_panel
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_avatar_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._disable_btn_detail
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_info
  L2_2 = L2_2.gameObject
  L2_2 = L2_2.transform
  L1_2(L2_2)
end
L0_1.rebuild_layout = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_avatar_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.AvatarName
  L1_2(L2_2, L3_2)
end
L0_1._setup_avatar_name = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.DamageTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.DamageType
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_damage_type
  L5_2 = L1_2.DamageTypeIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_damage_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.DamageTypeName
  L2_2(L3_2, L4_2)
end
L0_1._setup_damage_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.promotion_stars_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Rarity
  L3_2 = #L3_2
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.Rarity
  L4_2 = #L4_2
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.Rarity
  L5_2 = #L5_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_promotion_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Gacha.GachaPoolDetailDialog"
  L3_2 = A0_2._gacha_pool_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_click = L1_1
return L0_1
