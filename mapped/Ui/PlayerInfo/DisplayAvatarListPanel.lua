local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DisplayAvatarListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
function L2_1(A0_2)
  local L1_2
  A0_2._in_edit = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._add_click_callback
    L2_3 = A0_2._add_click_hander
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
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
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._avatar_click_callback = A1_2
  A0_2._avatar_click_hander = A2_2
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.display_avatar_panels
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.bind_click_avatar
    L10_2 = A0_2._avatar_click_callback
    L11_2 = A0_2._avatar_click_hander
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1.register_avatar_click_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._add_click_callback = A1_2
  A0_2._add_click_hander = A2_2
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.display_avatar_panels
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.bind_click_add
    L10_2 = A0_2._add_click_callback
    L11_2 = A0_2._add_click_hander
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1.register_add_click_callback = L2_1
function L2_1(A0_2, A1_2)
  A0_2._in_edit = A1_2
end
L0_1.set_in_edit = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._avatar_datas = A1_2
  A0_2._data = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_view
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_avatar_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_root_btn
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    L1_2 = A0_2._in_edit
    L1_2 = not L1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.enabled = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_total_click
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.display_avatar_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._avatar_datas
    L7_2 = L7_2[L5_2]
    L8_2 = A0_2._data
    L8_2 = L8_2.IsLocalPlayer
    L8_2 = A0_2._in_edit
    L8_2 = (L8_2 or L7_2 ~= nil) and L8_2
    L10_2 = L6_2
    L9_2 = L6_2.set_interactable
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
end
L0_1._setup_root_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.display_avatar_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._avatar_datas
    L6_2 = L6_2[L4_2]
    L8_2 = L5_2
    L7_2 = L5_2.setup_view
    L9_2 = L6_2
    L10_2 = A0_2._data
    L10_2 = L10_2.IsLocalPlayer
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1._refresh_avatar_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._selected_btns = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.display_avatar_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.get_selected_btn
    L6_2 = L6_2(L7_2)
    if L6_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._selected_btns
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._selected_btns
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._refresh_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    L1_2 = {}
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L1_2[1] = L2_2
    return L1_2
  else
    L1_2 = A0_2._selected_btns
    return L1_2
  end
end
L0_1.get_selected_btns = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_selected_btns
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2[1]
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.gameObject
  return L2_2
end
L0_1.get_first_selected_object = L2_1
return L0_1
