local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolySelectFriendItemPanel"
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
  L3_2 = L3_2.btn_select
  L4_2 = A0_2._on_btn_select
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._friend_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_player_photo
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_by_id
  L4_2 = A0_2._friend_data
  L4_2 = L4_2.HeadIconID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_platform_info
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._friend_data
  L4_2 = L4_2.PlatformInfo
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._friend_data
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_avatar
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_handler
  L4_2 = A0_2._friend_data
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_select = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_handler = A2_2
end
L0_1.register_select_callback = L1_1
return L0_1
