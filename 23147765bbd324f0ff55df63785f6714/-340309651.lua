local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.FriendUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AssistHistoryItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Assist_History_Desc"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_head_icon
  L4_2 = A0_2._on_btn_player_detail
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._history_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_time_date
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_desc
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_player_info
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_month
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._history_data
  L3_2 = L3_2.Time
  L3_2 = L3_2.Month
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_day
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._history_data
  L3_2 = L3_2.Time
  L3_2 = L3_2.Day
  L1_2(L2_2, L3_2)
end
L0_1._setup_time_date = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_head_icon
  L4_2 = A0_2._history_data
  L4_2 = L4_2.PlayerIconRow
  L4_2 = L4_2.ImagePath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._history_data
  L3_2 = L3_2.NickName
  L1_2(L2_2, L3_2)
end
L0_1._setup_player_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._history_data
  L1_2 = L1_2.AvatarData
  L1_2 = L1_2.AvatarName
  L2_2 = A0_2._history_data
  L2_2 = L2_2.NickName
  L3_2 = A0_2._history_data
  L3_2 = L3_2.TotalDamage
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L1_1
  L7_2 = L1_2
  L8_2 = L2_2
  L9_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._setup_desc = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.FriendUtils
  L1_2 = L1_2.show_friend_detail_info
  L2_2 = A0_2._history_data
  L2_2 = L2_2.UID
  L1_2(L2_2)
end
L0_1._on_btn_player_detail = L2_1
return L0_1
