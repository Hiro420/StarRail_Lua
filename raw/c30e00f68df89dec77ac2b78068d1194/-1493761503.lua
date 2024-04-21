local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Mission.Components.MissionItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_item_loaded = false
  A0_2._item_panel = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_navi
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._save_item_config
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._load_item
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_item_view_by_config
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_view_by_mission_item_config = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._save_item_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._load_item
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_item_view_by_item_data
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view_by_item_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_item_info
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._config
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._setup_item_visibility
    L3_2 = false
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._click_cbk
  if L1_2 then
    L1_2 = A0_2._click_cbk_owner
    if L1_2 then
      L1_2 = A0_2._click_cbk
      L2_2 = A0_2._click_cbk_owner
      L4_2 = A0_2
      L3_2 = A0_2.get_item_info
      L3_2 = L3_2(L4_2)
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_btn_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._select_cbk
  if L1_2 then
    L1_2 = A0_2._select_cbk_owner
    if L1_2 then
      L1_2 = A0_2._select_cbk
      L2_2 = A0_2._select_cbk_owner
      L4_2 = A0_2
      L3_2 = A0_2.get_item_info
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_navi = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._config = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
end
L0_1._save_item_config = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._item_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
end
L0_1._save_item_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_item_loaded
  if L1_2 == true then
    L1_2 = A0_2._config
    if L1_2 == nil then
      L1_2 = A0_2._item_data
      if L1_2 == nil then
        goto lbl_19
      end
    end
    L2_2 = A0_2
    L1_2 = A0_2._setup_item_visibility
    L3_2 = true
    L4_2 = A0_2._config
    L4_2 = L4_2 ~= nil
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  ::lbl_19::
  L1_2 = A0_2._is_item_loaded
  if L1_2 ~= true then
    L1_2 = A0_2._config
    if L1_2 == nil then
      goto lbl_29
    end
    L1_2 = A0_2._item_data
    if L1_2 == nil then
      goto lbl_29
    end
  end
  do return end
  ::lbl_29::
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_loader
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_loader
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._loaded_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_visibility
  L3_2 = true
  L4_2 = A0_2._config
  L4_2 = L4_2 ~= nil
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_item_loaded = true
end
L0_1._load_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._setup_item_visibility
    L4_2 = false
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = A0_2._item_panel
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.RewardItemIconLite
    L5_2 = G
    L5_2 = L5_2.RewardItemIconLiteBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._item_panel = L2_2
    L2_2 = A0_2._item_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._loaded_item
    L4_2 = L4_2.transform
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._item_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.ConfigID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._item_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_count_with_total
  L4_2 = 1
  L5_2 = 1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._item_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind_click
  L4_2 = A0_2
  L5_2 = A0_2._on_btn_click
  L6_2 = A0_2._on_btn_click
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_item_view_by_config = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._setup_item_visibility
    L5_2 = false
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
    return
  end
  L3_2 = A0_2._item_panel
  if L3_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.RewardItemIconLite
    L6_2 = G
    L6_2 = L6_2.RewardItemIconLiteBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._item_panel = L3_2
    L3_2 = A0_2._item_panel
    L4_2 = L3_2
    L3_2 = L3_2.bind
    L5_2 = A0_2._loaded_item
    L5_2 = L5_2.transform
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._item_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2.ConfigID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._item_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_count_with_total
  L5_2 = A1_2.Count
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._item_panel
  L4_2 = L3_2
  L3_2 = L3_2.bind_click
  L5_2 = A0_2
  L6_2 = A0_2._on_btn_click
  L7_2 = A0_2._on_btn_click
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_item_view_by_item_data = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk_owner = A1_2
  A0_2._click_cbk = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._select_cbk_owner = A1_2
  A0_2._select_cbk = A2_2
end
L0_1.register_select_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._config = nil
  A0_2._item_data = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.prefab_loader
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_minus
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.clear_item = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_loader
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_minus
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2 or L5_2
  if A1_2 then
    L5_2 = A2_2
  end
  L3_2(L4_2, L5_2)
end
L0_1._setup_item_visibility = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._config
  if not L1_2 then
    L1_2 = A0_2._item_data
  end
  return L1_2
end
L0_1.get_item_info = L1_1
return L0_1
