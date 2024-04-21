local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerPhotoPanel"
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._row = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view_by_row = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.PlayerIconConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_view_by_row
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view_by_id = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_avatar
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_icon_path = L1_1
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
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_lock_state = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_level = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.hide_level = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_black_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_is_in_blacklist = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.String
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._row
  L2_2 = L2_2.ImagePath
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_icon_path
  L3_2 = A0_2._row
  L3_2 = L3_2.ImagePath
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.bind_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._callback
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._callback_self
  if L1_2 then
    L1_2 = A0_2._callback
    L2_2 = A0_2._callback_self
    L3_2 = A0_2._row
    if L3_2 then
      L3_2 = A0_2._row
      L3_2 = L3_2.ID
    end
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._callback
    L2_2 = A0_2._row
    if L2_2 then
      L2_2 = A0_2._row
      L2_2 = L2_2.ID
    end
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_root = L1_1
return L0_1
