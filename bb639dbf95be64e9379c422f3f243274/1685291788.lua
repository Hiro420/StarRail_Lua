local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = "UIText_ActivityMonopoly_DailyTransfer_RewardPage"
L3_1 = "UIText_ActivityMonopoly_DailyTransfer_Continue"
L4_1 = "5200"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.MonopolyUtils
L5_1 = L5_1.GetDailySettleAnimDuration
L5_1 = L5_1()
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "ActivityMonopolyPersonalSettlePanel"
L8_1 = G
L8_1 = L8_1.BasePanel
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2, A1_2, A2_2)
end
L6_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_donate
  L4_2 = A0_2._on_btn_donate
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_again
  L4_2 = A0_2._on_btn_again
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_contribution_point
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_contribution_point
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.register_fill_end_callback
    L7_2 = A0_2._on_fill_anim_end
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L6_1._on_load = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._currency_num = A1_2
  A0_2._is_jackpot_main_page_settle = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_contribution
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_btn_state
  L3_2(L4_2)
end
L6_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._donate_callback
  L3_2 = A0_2._donate_handler
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_donate = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._again_callback
  L3_2 = A0_2._again_handler
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_again = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._back_callback
  L3_2 = A0_2._back_handler
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_back = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_in_sequence_index
  A0_2._cur_anim_index = L1_2
  L1_2 = A0_2._cur_in_sequence_index
  L1_2 = L1_2 + 1
  A0_2._next_anim_index = L1_2
  L1_2 = A0_2._next_anim_index
  if 5 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_contribution_point
    L1_2(L2_2)
    L1_2 = A0_2._cur_sequence_index
    L2_2 = A0_2._sequence_table
    L2_2 = #L2_2
    if L1_2 > L2_2 then
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._play_fill_anim
  L1_2(L2_2)
end
L6_1.play_fill_anim = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._init_contribution_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_contribution_sequence
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._find_contribution_end_point
  L3_2 = A0_2._last_contribution_num
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._find_contribution_end_point
  L4_2 = A0_2._contribution_num
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L5_1
  L4_2 = L2_2 - L1_2
  L4_2 = L4_2 + 1
  L3_2 = L3_2 / L4_2
  A0_2._per_fill_time = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._find_sequence_index
  L5_2 = A0_2._last_contribution_num
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._cur_sequence_index = L3_2
  L3_2 = A0_2._cur_sequence_index
  L4_2 = A0_2._sequence_table
  L4_2 = #L4_2
  if L3_2 == L4_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_slider_end
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._find_in_sequence_index
  L5_2 = A0_2._last_contribution_num
  L6_2 = A0_2._cur_sequence_index
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._cur_in_sequence_index = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_contribution_point
  L5_2 = A0_2._last_contribution_num
  L3_2(L4_2, L5_2)
end
L6_1._setup_contribution = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_contribution_point
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = 0
    if 1 < L5_2 then
      L7_2 = A0_2._sequence_table
      L8_2 = A0_2._cur_sequence_index
      L7_2 = L7_2[L8_2]
      L8_2 = L5_2 - 1
      L6_2 = L7_2[L8_2]
    else
      L8_2 = A0_2
      L7_2 = A0_2._find_quest_progress_index
      L9_2 = A0_2._sequence_table
      L10_2 = A0_2._cur_sequence_index
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2[L5_2]
      L7_2 = L7_2(L8_2, L9_2)
      L7_2 = L7_2 - 1
      if 0 < L7_2 then
        L8_2 = A0_2._quest_progress
        L8_2 = L8_2[L7_2]
        if L8_2 then
          goto lbl_30
          L6_2 = L8_2 or L6_2
        end
      end
      L6_2 = 0
    end
    ::lbl_30::
    L7_2 = A0_2._sequence_table
    L8_2 = A0_2._cur_sequence_index
    L7_2 = L7_2[L8_2]
    L7_2 = L7_2[L5_2]
    L8_2 = A0_2._binder
    L8_2 = L8_2.panel_contribution_point
    L8_2 = L8_2[L5_2]
    L9_2 = L8_2
    L8_2 = L8_2.setup_view
    L10_2 = L7_2
    L11_2 = L6_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.panel_contribution_point
    L8_2 = L8_2[L5_2]
    L9_2 = L8_2
    L8_2 = L8_2.reset_slider_value
    L8_2(L9_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.panel_contribution_point
    L8_2 = L8_2[L5_2]
    L9_2 = L8_2
    L8_2 = L8_2.set_cur_slider_fill
    L10_2 = A1_2
    L8_2(L9_2, L10_2)
  end
end
L6_1._setup_contribution_point = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._next_anim_index
  L1_2 = L1_2 - 1
  L1_2 = L1_2 % 5
  L1_2 = L1_2 + 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_contribution_point
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.play_cur_slider_fill_anim
  L4_2 = A0_2._contribution_num
  L5_2 = A0_2._per_fill_time
  L2_2(L3_2, L4_2, L5_2)
end
L6_1._play_fill_anim = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._next_anim_index
  A0_2._cur_anim_index = L1_2
  L1_2 = A0_2._next_anim_index
  L1_2 = L1_2 + 1
  A0_2._next_anim_index = L1_2
  L1_2 = A0_2._next_anim_index
  if 5 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_contribution_point
    L1_2(L2_2)
    L1_2 = A0_2._cur_sequence_index
    L2_2 = A0_2._sequence_table
    L2_2 = #L2_2
    if L1_2 > L2_2 then
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._play_fill_anim
  L1_2(L2_2)
end
L6_1._on_fill_anim_end = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._sequence_table
  L2_2 = A0_2._cur_sequence_index
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._cur_anim_index
  L1_2 = L1_2[L2_2]
  A0_2._last_contribution_num = L1_2
  L1_2 = A0_2._cur_sequence_index
  L1_2 = L1_2 + 1
  A0_2._cur_sequence_index = L1_2
  L1_2 = A0_2._cur_sequence_index
  L2_2 = A0_2._sequence_table
  L2_2 = #L2_2
  if L1_2 > L2_2 then
    return
  end
  L1_2 = A0_2._cur_sequence_index
  L2_2 = A0_2._sequence_table
  L2_2 = #L2_2
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_slider_end
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._find_in_sequence_index
  L3_2 = A0_2._last_contribution_num
  L4_2 = A0_2._cur_sequence_index
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._cur_in_sequence_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_contribution_point
  L3_2 = A0_2._last_contribution_num
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_in_sequence_index
  A0_2._cur_anim_index = L1_2
  L1_2 = A0_2._cur_in_sequence_index
  L1_2 = L1_2 + 1
  A0_2._next_anim_index = L1_2
end
L6_1._refresh_contribution_point = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1.JackpotInfo
  L1_2 = L1_2.ContributionNum
  A0_2._contribution_num = L1_2
  L1_2 = A0_2._contribution_num
  L2_2 = A0_2._currency_num
  L1_2 = L1_2 - L2_2
  A0_2._last_contribution_num = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonopolyUtils
  L2_2 = L2_2.GetContributionQuestIDs
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._quest_ids = L1_2
  L1_2 = {}
  A0_2._quest_progress = L1_2
  L1_2 = 1
  L2_2 = A0_2._quest_ids
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L1_1
    L6_2 = L5_2
    L5_2 = L5_2.TryGetQuestData
    L7_2 = A0_2._quest_ids
    L7_2 = L7_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._quest_progress
    L8_2 = L5_2.TotalProgress
    L6_2(L7_2, L8_2)
  end
end
L6_1._init_contribution_info = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  A0_2._sequence_table = L1_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._quest_progress
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._quest_progress
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
    L6_2 = #L1_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_contribution_point
    L7_2 = #L7_2
    if L6_2 == L7_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._sequence_table
      L8_2 = L1_2
      L6_2(L7_2, L8_2)
      L6_2 = {}
      L1_2 = L6_2
    end
  end
  L2_2 = #L1_2
  if 0 < L2_2 then
    L2_2 = #L1_2
    if L2_2 == 5 then
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = A0_2._sequence_table
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_contribution_point
      L2_2 = #L2_2
      L3_2 = #L1_2
      L2_2 = L2_2 - L3_2
      L3_2 = {}
      L4_2 = 1
      L5_2 = L2_2
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = A0_2._quest_progress
        L8_2 = #L8_2
        L9_2 = A0_2._binder
        L9_2 = L9_2.panel_contribution_point
        L9_2 = #L9_2
        L8_2 = L8_2 - L9_2
        L8_2 = L8_2 + L7_2
        L9_2 = A0_2._quest_progress
        L9_2 = L9_2[L8_2]
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L3_2
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
      end
      L4_2 = 1
      L5_2 = #L1_2
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L3_2
        L10_2 = L1_2[L7_2]
        L8_2(L9_2, L10_2)
      end
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = A0_2._sequence_table
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    end
  end
end
L6_1._init_contribution_sequence = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = A0_2._sequence_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._sequence_table
    L6_2 = L6_2[L5_2]
    L7_2 = #L6_2
    L7_2 = L6_2[L7_2]
    if A1_2 <= L7_2 then
      return L5_2
    end
  end
  L2_2 = A0_2._sequence_table
  L2_2 = #L2_2
  return L2_2
end
L6_1._find_sequence_index = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._sequence_table
  L3_2 = L3_2[A2_2]
  L3_2 = L3_2[1]
  if A1_2 < L3_2 then
    L3_2 = 0
    return L3_2
  end
  L3_2 = 1
  L4_2 = A0_2._sequence_table
  L4_2 = L4_2[A2_2]
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._sequence_table
    L7_2 = L7_2[A2_2]
    L7_2 = L7_2[L6_2]
    if L7_2 == A1_2 then
      return L6_2
    end
  end
  L3_2 = A0_2._sequence_table
  L3_2 = L3_2[A2_2]
  L3_2 = #L3_2
  return L3_2
end
L6_1._find_in_sequence_index = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._quest_progress
  L2_2 = #L2_2
  L2_2 = L2_2 - 5
  L2_2 = L2_2 + 1
  L3_2 = 1
  L4_2 = A0_2._quest_progress
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._quest_progress
    L7_2 = L7_2[L6_2]
    if A1_2 <= L7_2 then
      L7_2 = A0_2._quest_progress
      L7_2 = #L7_2
      L7_2 = L7_2 - L6_2
      L7_2 = L7_2 + 1
      if L7_2 < 5 then
        L7_2 = A0_2._quest_progress
        L7_2 = #L7_2
        L7_2 = L7_2 - 5
        L2_2 = L7_2 + 1
        break
      end
      L7_2 = math
      L7_2 = L7_2.floor
      L8_2 = L6_2 - 1
      L8_2 = L8_2 / 5
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2 * 5
      L2_2 = L7_2 + 1
      break
    end
  end
  return L2_2
end
L6_1._find_contribution_start_point = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._quest_progress
  L2_2 = #L2_2
  L3_2 = 1
  L4_2 = A0_2._quest_progress
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._quest_progress
    L7_2 = L7_2[L6_2]
    if A1_2 < L7_2 then
      L2_2 = L6_2
      break
    end
  end
  return L2_2
end
L6_1._find_contribution_end_point = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = A0_2._quest_progress
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._quest_progress
    L6_2 = L6_2[L5_2]
    if L6_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = A0_2._quest_progress
  L2_2 = #L2_2
  return L2_2
end
L6_1._find_quest_progress_index = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.SystemInfo
  L2_2 = L1_2
  L1_2 = L1_2.IsTutorialFinished
  L1_2 = L1_2(L2_2)
  L1_2 = L0_1.JackpotInfo
  L1_2 = L1_2.IsProgressExtra
  L1_2 = not L1_2 or L1_2
  L2_2 = A0_2._is_jackpot_main_page_settle
  if L2_2 then
    L2_2 = L3_1
    if L2_2 then
      goto lbl_19
    end
  end
  L2_2 = L2_1
  ::lbl_19::
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_donate
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_again
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_jackpot_main_page_settle
  L5_2 = not L1_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_back_btn
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_again
  L3_2 = L3_2.gameObject
  L3_2 = L3_2.activeSelf
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.TutorialTaskUnlock
    L5_2 = L4_1
    L3_2(L4_2, L5_2)
  end
end
L6_1._setup_btn_state = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._donate_callback = A1_2
  A0_2._donate_handler = A2_2
end
L6_1.register_btn_donate_callback = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._again_callback = A1_2
  A0_2._again_handler = A2_2
end
L6_1.register_btn_again_callback = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._back_callback = A1_2
  A0_2._back_handler = A2_2
end
L6_1.register_btn_back_callback = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_again
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_back
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_donate
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L6_1.set_all_btn_interactable = L7_1
return L6_1
