local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Challenge.Components.DrinkMakerChallengeDrinkIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerBarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerChallengeDrinkIconPanel"
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
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_clicked
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._challenge_data = A1_2
  L2_2 = A0_2._challenge_data
  L2_2 = L2_2.Drink
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.IsUnlock
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lock
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lock_text
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_unlock
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_unlock_text
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_finish
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2.IsFinish
  L4_2(L5_2, L6_2)
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_icon
    L7_2 = L2_2.IconPath
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_name
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L2_2.Name
    L4_2(L5_2, L6_2)
    L4_2 = G
    L4_2 = L4_2.RedDotModule
    L4_2 = L4_2.Instance
    L5_2 = L4_2
    L4_2 = L4_2.bind_reddot
    L6_2 = "DrinkMakerNewChallenge"
    L7_2 = A0_2._challenge_data
    L7_2 = L7_2.ID
    L8_2 = A0_2
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_reddot
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_icon_lock
    L7_2 = L2_2.IconPath
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.mask_icon_lock
    L5_2 = G
    L5_2 = L5_2.AssetLoader
    L5_2 = L5_2.SyncLoadAsset
    L6_2 = L2_2.IconPath
    L7_2 = typeof
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.Sprite
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2.sprite = L5_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_name_lock
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = G
    L6_2 = L6_2.DrinkMakerBarUtils
    L6_2 = L6_2.lock_name
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._challenge_data
  L2_2 = A1_2 == L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = L3_2
  L3_2 = L3_2.SetChecked
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.save_navigation_target
    L5_2 = A0_2._binder
    L5_2 = L5_2.btn_root
    L5_2 = L5_2.gameObject
    L3_2(L4_2, L5_2)
  end
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_icon_click_callback = A1_2
  A0_2._on_icon_click_callback_owner = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_icon_click_callback
  if L1_2 then
    L1_2 = A0_2._on_icon_click_callback_owner
    if L1_2 then
      L1_2 = A0_2._on_icon_click_callback
      L2_2 = A0_2._on_icon_click_callback_owner
      L3_2 = A0_2._challenge_data
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_btn_root_clicked = L1_1
return L0_1
