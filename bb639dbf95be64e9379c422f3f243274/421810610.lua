local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumStaffItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_selected = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_root
    L4_2 = A0_2._on_btn_click
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    function L2_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_gamepad_select
      L0_3(L1_3)
    end
    L1_2.onSelectTrigger = L2_2
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._museum_staff_data = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.info_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._museum_staff_data
  L3_2(L4_2, L5_2)
  A0_2._is_selected = false
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2._hide_area_when_selected = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeDynamicKey
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.gameObject
  L6_2 = A0_2._museum_staff_data
  L6_2 = L6_2.ID
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "MuseumNewStaff"
  L6_2 = A0_2._museum_staff_data
  L6_2 = L6_2.ID
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.info_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_avatar_head_rotation
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_avatar_head_rotation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  if L2_2 ~= nil then
    A0_2._is_selected = A1_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_listener = A2_2
end
L0_1.set_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_area_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_valid_status
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._museum_staff_data
  L1_2 = L1_2.OwnerAreaID
  if L1_2 ~= 0 then
    L2_2 = A0_2._hide_area_when_selected
    if not L2_2 then
      goto lbl_17
    end
    L2_2 = A0_2._is_selected
    if not L2_2 then
      goto lbl_17
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_area
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_17::
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_area
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_area_index
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = "0"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_area_status = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._museum_staff_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MuseumStaffData
  L2_2 = L2_2.StaffStatus
  L2_2 = L2_2.Dispatch
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L3_2 = not L1_2
    L2_2.interactable = L3_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_disable
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_valid_status = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._click_callback
  if L1_2 then
    L1_2 = A0_2._click_listener
    if L1_2 then
      L1_2 = A0_2._click_callback
      L2_2 = A0_2._click_listener
      L3_2 = A0_2._museum_staff_data
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._gamepad_select_callback = A1_2
  A0_2._gamepad_select_callback_self = A2_2
end
L0_1.set_gamepad_select_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._gamepad_select_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._gamepad_select_callback
    L2_2 = A0_2._gamepad_select_callback_self
    L3_2 = A0_2._museum_staff_data
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_gamepad_select = L1_1
return L0_1
