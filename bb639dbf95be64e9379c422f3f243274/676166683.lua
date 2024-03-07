local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEndlessAreaPanel"
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
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_callback_self = A2_2
end
L0_1.register_click_callbak = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._data = A1_2
  A0_2._index = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_info_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_status_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_record_view
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "RogueEndlessAreaNew"
  L6_2 = A0_2._data
  L6_2 = L6_2.AreaID
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.interactable = A1_2
end
L0_1.set_enable_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_status_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_record_view
  L1_2(L2_2)
end
L0_1.refresh_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_index
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetText
    L8_2 = string
    L8_2 = L8_2.format
    L9_2 = "%02X"
    L10_2 = A0_2._index
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_normal
  L4_2 = A0_2._data
  L4_2 = L4_2.EntranceImage
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_locked
  L4_2 = A0_2._data
  L4_2 = L4_2.EntranceLockedImage
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_info_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.nodes_is_locked
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._data
    L8_2 = L8_2.IsUnlocked
    L8_2 = not L8_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.nodes_not_locked
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._data
    L8_2 = L8_2.IsUnlocked
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_name
  L2_2 = A0_2._data
  L2_2 = L2_2.IsUnlocked
  if L2_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_34
    end
  end
  L2_2 = 0.7
  ::lbl_34::
  L1_2.alpha = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_index
  L2_2 = A0_2._data
  L2_2 = L2_2.IsUnlocked
  if L2_2 then
    L2_2 = 1
    if L2_2 then
      goto lbl_45
    end
  end
  L2_2 = 0.2
  ::lbl_45::
  L1_2.alpha = L2_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.nodes_is_doing
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._data
    L8_2 = L8_2.IsDoing
    L6_2(L7_2, L8_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.nodes_not_doing
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._data
    L8_2 = L8_2.IsDoing
    L8_2 = not L8_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_status_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsUnlocked
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.timer_unlock
    L2_2 = L1_2
    L1_2 = L1_2.SetTargetTimeByTimeStamp
    L3_2 = A0_2._data
    L3_2 = L3_2.BeginTimeStamp
    L4_2 = A0_2._on_unlocked
    L5_2 = A0_2
    L6_2 = 2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_no_record
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._data
    L3_2 = L3_2.HasRecord
    L3_2 = not L3_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_record_info
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._data
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_record_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_callback_self
  L4_2 = A0_2._data
  L5_2 = A0_2._index
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_root = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_view
  L1_2(L2_2)
end
L0_1._on_unlocked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_navigation_btn
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_navigation_btn = L1_1
return L0_1
