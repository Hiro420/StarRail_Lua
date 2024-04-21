local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerBarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerIngredientHandbookIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_click
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._ingredient = A1_2
  L2_2 = A0_2._ingredient
  L3_2 = L2_2
  L2_2 = L2_2.IsUnlock
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_unlock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_name_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_icon
    L6_2 = A0_2._ingredient
    L6_2 = L6_2.Row
    L6_2 = L6_2.IconPath
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A0_2._ingredient
    L5_2 = L5_2.Row
    L5_2 = L5_2.IngredientName
    L3_2(L4_2, L5_2)
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.bind_reddot
    L5_2 = "DrinkMakerNewIngredient"
    L6_2 = A0_2._ingredient
    L6_2 = L6_2.ID
    L7_2 = A0_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_reddot
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_icon_lock
    L6_2 = A0_2._ingredient
    L6_2 = L6_2.Row
    L6_2 = L6_2.IconPath
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.mask_icon_lock
    L4_2 = G
    L4_2 = L4_2.AssetLoader
    L4_2 = L4_2.SyncLoadAsset
    L5_2 = A0_2._ingredient
    L5_2 = L5_2.Row
    L5_2 = L5_2.IconPath
    L6_2 = typeof
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.Sprite
    L6_2, L7_2, L8_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L3_2.sprite = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_name_lock
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = G
    L5_2 = L5_2.DrinkMakerBarUtils
    L5_2 = L5_2.lock_name
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_listener = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A0_2._ingredient
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_listener
  L4_2 = A0_2._ingredient
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root_click = L1_1
return L0_1
