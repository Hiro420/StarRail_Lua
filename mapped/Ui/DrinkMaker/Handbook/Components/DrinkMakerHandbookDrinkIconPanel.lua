local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Handbook.Components.DrinkMakerHandbookDrinkIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerBarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerHandbookDrinkIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_clicked
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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._drink = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.IsUnlock
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.IsUnlock
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unlock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.IsUnlock
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unlock_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.IsUnlock
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.IsUnlock
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L5_2 = A1_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2.Name
    L2_2(L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.bind_reddot
    L4_2 = "DrinkMakerNewDrink"
    L5_2 = A0_2._drink
    L5_2 = L5_2.FormulaID
    L6_2 = A0_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_reddot
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon_lock
    L5_2 = A1_2.IconPath
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.mask_icon_lock
    L3_2 = G
    L3_2 = L3_2.AssetLoader
    L3_2 = L3_2.SyncLoadAsset
    L4_2 = A1_2.IconPath
    L5_2 = typeof
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Sprite
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    L2_2.sprite = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_name_lock
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = G
    L4_2 = L4_2.DrinkMakerBarUtils
    L4_2 = L4_2.lock_name
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A0_2._drink
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_icon_click_callback = A1_2
  A0_2._on_icon_click_callback_owner = A2_2
end
L0_1.register_on_icon_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.OnNaviHandler = A1_2
end
L0_1.set_navi_handler = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_icon_click_callback
  if L1_2 then
    L1_2 = A0_2._on_icon_click_callback_owner
    if L1_2 then
      L1_2 = A0_2._on_icon_click_callback
      L2_2 = A0_2._on_icon_click_callback_owner
      L3_2 = A0_2._drink
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_btn_root_clicked = L1_1
return L0_1
