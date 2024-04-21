local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AddFriendPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_add
  L4_2 = A0_2._on_btn_add
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._listener = A2_2
end
L0_1.set_add_friend_finish_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._assist_player_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.player_photo_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view_by_id
  L4_2 = A0_2._assist_player_data
  L4_2 = L4_2.HeadIconID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A0_2._assist_player_data
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.FriendUtils
  L1_2 = L1_2.do_add_friend
  L2_2 = A0_2._assist_player_data
  L2_2 = L2_2.UID
  L3_2 = CS
  L3_2 = L3_2.LCNCCKJBFIP
  L3_2 = L3_2.JKGIBNFBGOL
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._listener
    if L1_2 then
      L1_2 = A0_2._callback
      L2_2 = A0_2._listener
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_add = L1_1
return L0_1
