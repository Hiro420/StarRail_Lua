local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatImagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCatImagePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooCatIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ItemRarity
L2_1 = {}
L3_1 = L1_1.Rare
L2_1[L3_1] = "#73b0f4"
L3_1 = L1_1.VeryRare
L2_1[L3_1] = "#c197ff"
L3_1 = L1_1.SuperRare
L2_1[L3_1] = "#ffcf70"
L3_1 = {}
L4_1 = L1_1.Rare
L3_1[L4_1] = "#4f9aed"
L4_1 = L1_1.VeryRare
L3_1[L4_1] = "#995cf3"
L4_1 = L1_1.SuperRare
L3_1[L4_1] = "#f2a63a"
function L4_1(A0_2)
  local L1_2
  A0_2._cat_select_callback = nil
  A0_2._cat_select_callback_self = nil
  A0_2._cat_image_panel = nil
  A0_2._cat_data = nil
  A0_2._slot_index = nil
  A0_2._is_show_reddot = false
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._cat_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cat_data
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "SpaceZooNewCat"
  L4_2 = A0_2._cat_data
  L4_2 = L4_2.UniqueID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1.register_reddot = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._cat_select_callback = A1_2
  A0_2._cat_select_callback_self = A2_2
end
L0_1.register_cat_select_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_checked
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    if A1_2 then
      if A2_2 == nil then
        A0_2._slot_index = A2_2
        L3_2 = A0_2._binder
        L3_2 = L3_2.node_icon
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = false
        L3_2(L4_2, L5_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.text_num
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = false
        L3_2(L4_2, L5_2)
      else
        A0_2._slot_index = A2_2
        L3_2 = A0_2._binder
        L3_2 = L3_2.node_icon
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = true
        L3_2(L4_2, L5_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.text_num
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = true
        L3_2(L4_2, L5_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.text_num
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetText
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1.set_selected = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    A1_2 = false
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.IsInFakeDisableState = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_disable
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_disable = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._slot_index
  return L1_2
end
L0_1.get_slot_index = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_minus
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_minus = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.enable_btn = L4_1
function L4_1(A0_2, A1_2)
  A0_2._focus_when_select = A1_2
end
L0_1.set_focus_when_select = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_root_btn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._focus_when_select
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_btn_root
      L0_3(L1_3)
    end
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
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_img_rarity_frame
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_img_icon
  L1_2(L2_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._cat_select_callback
  L3_2 = A0_2._cat_select_callback_self
  L4_2 = A0_2._cat_data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_rarity
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = A0_2._cat_data
  L3_2 = L3_2.Rarity
  L3_2 = L2_1[L3_2]
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_rarity_mask
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = A0_2._cat_data
  L3_2 = L3_2.Rarity
  L3_2 = L3_1[L3_2]
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
end
L0_1._setup_img_rarity_frame = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cat_image_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.SpaceZooCatImagePanel
    L4_2 = G
    L4_2 = L4_2.SpaceZooCatImagePanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = L1_2
    L2_2 = L1_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L2_2(L3_2, L4_2)
    A0_2._cat_image_panel = L1_2
  end
  L1_2 = A0_2._cat_image_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cat_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_img_icon = L4_1
return L0_1
