local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumBuffTipDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = "UIText_Activity_Museum_Buff_Title"
L1_1 = "UIText_Activity_Museum_Buff_Desc"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "MuseumBuffTipDialog"
L4_1 = G
L4_1 = L4_1.BaseDialog
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumBuffTipDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._slot_trans = A1_2
  A0_2._random_event = A2_2
  L3_2 = G
  L3_2 = L3_2.MuseumUtils
  L3_2 = L3_2.get_random_event_accept_choice
  L4_2 = A0_2._random_event
  L3_2 = L3_2(L4_2)
  A0_2._accept_choice = L3_2
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._slot_trans = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_position
  L3_2 = A0_2._slot_trans
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L4_2 = A0_2._accept_choice
  L4_2 = L4_2.EventRewardBuff
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_open_day_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = tostring
  L4_2 = A0_2._random_event
  L4_2 = L4_2.RemainOpenDayCount
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L3_2 = A1_2.position
  L2_2.position = L3_2
end
L2_1._setup_position = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._on_btn_close = L3_1
return L2_1
