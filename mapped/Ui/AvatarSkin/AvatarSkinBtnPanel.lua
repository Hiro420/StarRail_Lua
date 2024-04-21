local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.UIUtils.UITextUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkinBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
L2_1 = {}
L2_1[4] = "SpriteOutput/ItemIcon/Rarity/FrameItemRarity04.png"
L2_1[5] = "SpriteOutput/ItemIcon/Rarity/FrameItemRarity05.png"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_button_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._skin_id
  return L1_2
end
L0_1.get_skin_id = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._avatar_data = A1_2
  A0_2._skin_id = A2_2
  A0_2._current_index = A4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_root
  L6_2 = not A3_2
  L5_2.interactable = L6_2
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_skin
  L8_2 = A0_2._avatar_data
  L9_2 = L8_2
  L8_2 = L8_2.GetSkinItemAvatarIconPath
  L10_2 = A0_2._skin_id
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_skin_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A0_2._avatar_data
  L8_2 = L7_2
  L7_2 = L7_2.GetSkinName
  L9_2 = A0_2._skin_id
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_owned
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L1_1
  L8_2 = L7_2
  L7_2 = L7_2.IsOwnSkin
  L9_2 = A0_2._skin_id
  L7_2 = L7_2(L8_2, L9_2)
  L7_2 = not L7_2
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ConstValueClientExcelTable
  L5_2 = L5_2.GetData
  L6_2 = "AvatarDefaultSkinRarity"
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.Value
  L5_2 = L5_2.IntValue
  L6_2 = A0_2._skin_id
  if L6_2 ~= 0 then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.ItemExcelTable
    L6_2 = L6_2.GetData
    L7_2 = A0_2._skin_id
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2.Rarity
    L5_2 = #L7_2
  end
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.img_bg
  L9_2 = L2_1[L5_2]
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = G
  L6_2 = L6_2.RedDotModule
  L6_2 = L6_2.Instance
  L7_2 = L6_2
  L6_2 = L6_2.bind_reddot
  L8_2 = "AvatarSkinNew"
  L9_2 = A0_2._skin_id
  L10_2 = A0_2
  L11_2 = A0_2._binder
  L11_2 = L11_2.node_avatar_skin_reddot
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A2_2
  A0_2._click_callback_obj = A1_2
end
L0_1.bind_button_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._click_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._click_callback
    L2_2 = A0_2._click_callback_obj
    L3_2 = A0_2._skin_id
    L4_2 = A0_2._current_index
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1._on_button_click = L3_1
return L0_1
