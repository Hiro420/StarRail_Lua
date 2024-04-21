local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RaidCollection.Widget.RaidCollectionEntranceContentPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RaidCollection.Widget.RaidCollectionEntranceContentPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidCollectionEntranceItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._id_to_panel = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._data
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_content_panel
  L5_2 = A0_2._data
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.set_checked
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_checked = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._data
  if L3_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_content_panel
  L5_2 = A0_2._data
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.set_visible
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_visible = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._data
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_content_panel
  L4_2 = A0_2._data
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.try_play_unlock
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.try_play_unlock = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_content_panel
  L3_2 = A0_2._data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.reset_unlock
  L1_2(L2_2)
end
L0_1.reset_unlock = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_content_panel
  L3_2 = A0_2._data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.prepare_play_unlock
  L1_2(L2_2)
end
L0_1.prepare_play_unlock = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_content_panel
  L3_2 = A0_2._data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_out
  L1_2(L2_2)
end
L0_1.play_fade_out = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_content_panel
  L3_2 = A0_2._data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.play_fade_in
  L1_2(L2_2)
end
L0_1.play_fade_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_content_panel
  L3_2 = A0_2._data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.prepare_fade_in
  L1_2(L2_2)
end
L0_1.prepare_fade_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_content_panel
  L3_2 = A0_2._data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.reset_fade
  L1_2(L2_2)
end
L0_1.reset_fade = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_content_panel
  L3_2 = A0_2._data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.reset_check
  L1_2(L2_2)
end
L0_1.reset_check = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._data = A1_2
  A0_2._index = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_content
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_content_panel
  L3_2 = A0_2._data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = pairs
  L3_2 = A0_2._id_to_panel
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.safe_set_active
    L9_2 = A0_2._data
    L9_2 = L9_2.ID
    L9_2 = L5_2 == L9_2
    L7_2(L8_2, L9_2)
  end
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._data
  L5_2 = A0_2._index
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._refresh_content = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.ID
  L3_2 = A0_2._id_to_panel
  L3_2 = L3_2[L2_2]
  if L3_2 == nil then
    L3_2 = A1_2.Row
    L3_2 = L3_2.GroupEntrancePrefabPath
    L5_2 = A0_2
    L4_2 = A0_2.sync_load_prefab
    L6_2 = L3_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_content
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RaidCollectionEntranceContentPanel
    L8_2 = G
    L8_2 = L8_2.RaidCollectionEntranceContentPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_click_callback
    L8_2 = A0_2._on_btn_click
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._id_to_panel
    L6_2[L2_2] = L5_2
  end
  L3_2 = A0_2._id_to_panel
  L3_2 = L3_2[L2_2]
  return L3_2
end
L0_1._safe_get_content_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L4_2 = A0_2._data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_content_panel
  L3_2 = A0_2._data
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
return L0_1
