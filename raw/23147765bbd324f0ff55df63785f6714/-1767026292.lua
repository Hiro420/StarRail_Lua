local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.StuffStats
L1_1 = "UIText_Activity_Museum_MapPage_NPCTipContent"
L2_1 = "UIText_ActivityMuseum_RewardEventFailed"
L3_1 = require
L4_1 = "Ui.Museum.MuseumStaffTipDialogBinder"
L3_1(L4_1)
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "MuseumStaffTipDialog"
L5_1 = G
L5_1 = L5_1.BaseDialog
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumStaffTipDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._slot_trans = A1_2
  A0_2._reward_event_data = A2_2
  L3_2 = A0_2._reward_event_data
  L3_2 = L3_2.RewardStaff
  A0_2._staff_data = L3_2
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._slot_trans = nil
  A0_2._staff_data = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_position
  L3_2 = A0_2._slot_trans
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_staff_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_tip_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status
  L1_2(L2_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L3_2 = A1_2.position
  L2_2.position = L3_2
end
L3_1._setup_position = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_head
  L4_2 = A0_2._staff_data
  L4_2 = L4_2.ItemRow
  L4_2 = L4_2.ItemFigureIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._staff_data
  L1_2 = L1_2.StaffRow
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_a_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.StatsA
  L5_2 = L0_1.StatsA
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_b_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.StatsB
  L5_2 = L0_1.StatsB
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_c_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.StatsC
  L5_2 = L0_1.StatsC
  L2_2(L3_2, L4_2, L5_2)
end
L3_1._setup_staff_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._reward_event_data
  L1_2 = L1_2.IsEventFail
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = A0_2._staff_data
    L2_2 = L2_2.ItemRow
    L2_2 = L2_2.ItemName
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_1
    L5_2 = A0_2._reward_event_data
    L5_2 = L5_2.LeftRound
    L6_2 = L1_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L3_1._setup_tip_text = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_fail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._reward_event_data
  L3_2 = L3_2.IsEventFail
  L1_2(L2_2, L3_2)
end
L3_1._setup_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_btn_close = L4_1
return L3_1
