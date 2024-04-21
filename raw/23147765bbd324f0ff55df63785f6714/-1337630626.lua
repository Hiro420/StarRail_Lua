local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerSupportAvatarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_node
  L4_2 = A0_2._data
  L4_2 = L4_2 == nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._data
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_info
    L4_2 = A0_2._data
    L4_2 = L4_2.AvatarId
    L5_2 = A0_2._data
    L5_2 = L5_2.Level
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._id = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_node
  L5_2 = A1_2 == 0
  L3_2(L4_2, L5_2)
  if A1_2 ~= 0 then
    L4_2 = A0_2
    L3_2 = A0_2._refresh_info
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.setup_view_by_id = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_interactable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_support
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_node = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.InventoryModule
  L5_2 = L5_2.GetItemRarityConfig
  L6_2 = L3_2.Rarity
  L6_2 = #L6_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_level
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetText
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  L6_2 = L4_2.AvatarSideIconPath
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.DamageTypeExcelTable
  L7_2 = L7_2.GetData
  L8_2 = L4_2.DamageType
  L7_2 = L7_2(L8_2)
  L9_2 = A0_2
  L8_2 = A0_2._async_load_sprite_to
  L10_2 = A0_2._binder
  L10_2 = L10_2.img_avatar
  L11_2 = L6_2
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = A0_2
  L8_2 = A0_2._async_load_sprite_to
  L10_2 = A0_2._binder
  L10_2 = L10_2.img_rarity
  L11_2 = L5_2.FrameItemRarityBgPath
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = A0_2
  L8_2 = A0_2._async_load_sprite_to
  L10_2 = A0_2._binder
  L10_2 = L10_2.img_damage_type
  L11_2 = L7_2.DamageTypeIconPath
  L8_2(L9_2, L10_2, L11_2)
end
L0_1._refresh_info = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._callback
    L3_2 = A0_2._callback_self
    L4_2 = A0_2._data
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._id
    if L1_2 ~= nil then
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.invoke_callback
      L2_2 = A0_2._callback
      L3_2 = A0_2._callback_self
      L4_2 = A0_2._id
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_btn_root = L1_1
return L0_1
