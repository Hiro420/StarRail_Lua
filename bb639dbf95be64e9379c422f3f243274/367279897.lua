local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusGhostFirePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.SymbolDetailPanelIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MapSymbolDetailPanelBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BinderIndex
  L1_2 = L1_2.BinderIndexOpen
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.auto_bind
    L3_2 = L0_1
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = A0_2.node_refresh_time
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L1_2 = A0_2.text_trace_tip
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._create_panel_with_root_trans
      L3_2 = G
      L3_2 = L3_2.NodeListView
      L4_2 = G
      L4_2 = L4_2.NodeListViewBinder
      L5_2 = A0_2.node_ghost_fire
      L6_2 = G
      L6_2 = L6_2.HeliobusGhostFirePanel
      L7_2 = G
      L7_2 = L7_2.HeliobusGhostFirePanelBinder
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
      A0_2.list_ghost_fire = L1_2
      return
    end
  end
  A0_2.node_ghost_fire = nil
  A0_2.canvas_group_root = nil
  A0_2.node_text_title = nil
  A0_2.node_offering_progress = nil
  A0_2.node_refresh_time = nil
  A0_2.node_remain_timer = nil
  A0_2.node_challenge = nil
  A0_2.text_challenge_day = nil
  A0_2.node_challenge_count = nil
  A0_2.text_finish_count = nil
  A0_2.text_week_limit = nil
  A0_2.text_desc = nil
  A0_2.node_reward_panel = nil
  A0_2.scroll_items = nil
  A0_2.node_double_reward_mark = nil
  A0_2.text_reward_title = nil
  A0_2.node_reward_panel_rogue_all = nil
  A0_2.node_reward_panel_rogue_score = nil
  A0_2.scroll_items_rogue_score = nil
  A0_2.text_reward_title_rogue_score = nil
  A0_2.node_reward_panel_rogue_chest = nil
  A0_2.scroll_items_rogue_chest = nil
  A0_2.node_double_reward_mark_rogue_chest = nil
  A0_2.text_reward_title_rogue_chest = nil
  A0_2.node_progress = nil
  A0_2.node_challenge_schedule_list_root = nil
  A0_2.node_progress_challenge = nil
  A0_2.text_challenge_title = nil
  A0_2.text_challenge_complete = nil
  A0_2.text_challenge_total = nil
  A0_2.text_challenge_get_star = nil
  A0_2.text_challenge_total_star = nil
  A0_2.node_progress_challenge_lock = nil
  A0_2.text_challenge_lock_title = nil
  A0_2.text_challenge_lock_tip = nil
  A0_2.node_challenge_count_down = nil
  A0_2.challenge_remain_timer = nil
  A0_2.node_progress_title = nil
  A0_2.node_progress_rogue = nil
  A0_2.node_rogue_cur_lv = nil
  A0_2.text_rogue_cur_lv = nil
  A0_2.node_progress_score = nil
  A0_2.text_rogue_cur_score = nil
  A0_2.text_rogue_max_score = nil
  A0_2.rogue_remain_timer = nil
  A0_2.node_progress_raid = nil
  A0_2.scroll_progress = nil
  A0_2.node_ghost_fire_progress = nil
  A0_2.node_btn_panel = nil
  A0_2.text_trace_tip = nil
  A0_2.btn_transfer = nil
  A0_2.btn_trace = nil
  A0_2.text_trace = nil
  A0_2.text_transfer = nil
  A0_2.node_desc_tip = nil
  A0_2.node_text_num = nil
  A0_2.node_icon_multiple_drop = nil
  A0_2.text_description = nil
  A0_2.text_multiple_drop_total_num = nil
  A0_2.text_multiple_drop_cur_num = nil
  A0_2.icon_multiple_drop = nil
  A0_2.node_title_panel = nil
  A0_2.image_title = nil
  A0_2.text_title = nil
  A0_2.node_sub_mission_target = nil
  A0_2.text_sub_mission_target = nil
  A0_2.node_challenge_bg_normal = nil
  A0_2.node_challenge_bg_lock = nil
  A0_2.node_red_dot_tip = nil
  A0_2.text_red_dot_tip = nil
  A0_2.node_prestige = nil
  A0_2.in_control_tip_trace = nil
  A0_2.btn_game_pad = nil
  A0_2.node_reward_collection_root = nil
  A0_2.node_reward_collection_list_root = nil
  A0_2.node_completed_reward_collection = nil
  A0_2.node_theme_mark_rogue = nil
  A0_2.theme_mark_rogue_icon = nil
  A0_2.theme_mark_rogue_text = nil
  A0_2.node_theme_mark = nil
  A0_2.theme_mark_icon = nil
  A0_2.theme_mark_text = nil
  A0_2.double_reward_mark_text = nil
  A0_2.double_reward_mark_rogue_chest_text = nil
  A0_2.theme_mark_banner_icon = nil
  A0_2.node_theme_mark_banner = nil
  A0_2.special_bg = nil
end
L1_1._on_bind = L2_1
return L1_1
