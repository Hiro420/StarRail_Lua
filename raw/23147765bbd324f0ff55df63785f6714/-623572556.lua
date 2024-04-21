local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeStoryLevelPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._challenge_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_status
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_detail_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_progress
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_score
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_event_listener = A2_2
  A0_2._on_click_item = A1_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._challenge_data
  return L1_2
end
L0_1.get_challenge_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_click_item
  if L1_2 then
    L1_2 = A0_2._on_click_item
    L2_2 = A0_2._click_event_listener
    L3_2 = A0_2._challenge_data
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2.save_navigation_target
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_root
    L3_2 = L3_2.gameObject
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_click = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._challenge_data = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._challenge_data
  L2_2 = L1_2
  L1_2 = L1_2.GetIsOpen
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.IsFinish
  if L3_2 then
    L2_2 = 1
  else
    L3_2 = A0_2._challenge_data
    L3_2 = L3_2.IsFinish
    if not L3_2 and L1_2 then
      L2_2 = 2
    elseif not L1_2 then
      L2_2 = 3
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_passed
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 == 1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_pending
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 == 2 or L2_2 == 1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_lock
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 == 3
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_passed_score
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 == 1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_pending_score
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 == 2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_star_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2 ~= 3
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = L2_2 == 3
  L3_2.IsInFakeDisableState = L4_2
end
L0_1._setup_status = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = "0"
  L4_2 = tostring
  L5_2 = A0_2._challenge_data
  L5_2 = L5_2.IndexInGroup
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_detail_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.Score
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_score_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 0 < L1_2
  L2_2(L3_2, L4_2)
  if L1_2 == 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_score_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Challenge_FastReward_Title"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_score
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._challenge_data
    L4_2 = L4_2.Score
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_score = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_progress_stars
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2._challenge_data
    L8_2 = L8_2.Stars
    L8_2 = L4_2 <= L8_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_progress = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_select_callback_handler = A1_2
  A0_2._on_select_callback_listener = A2_2
end
L0_1.register_select_callback = L1_1
return L0_1
