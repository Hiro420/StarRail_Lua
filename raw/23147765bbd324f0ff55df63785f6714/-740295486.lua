local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Finish.RogueExploreFinishPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueExploreFinishPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "RogueSelectMainPage"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueExploreFinishPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  A0_2._finish_info = nil
  A0_2._first_reward_avatar_id = nil
  L2_2 = A0_2
  L1_2 = A0_2._add_mission_lock
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_exit_callback
  L3_2 = A0_2._remove_mission_lock
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._finish_info = A1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._finish_info = nil
  A0_2._first_reward_avatar_id = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = L0_1._on_btn_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Scroll"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CloseRogueLoading
  L4_2 = A0_2._on_close_rogue_loading
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._finish_info
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_result
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_record
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_next
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_score
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_talent_coin
  L1_2(L2_2)
end
L0_1._setup_result = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._finish_info
  L1_2 = L1_2.IsWin
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_succ_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_fail_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_room
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._finish_info
  L4_2 = L4_2.ReachRoomCount
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_room_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._finish_info
  L4_2 = L4_2.TotalRoomCount
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueAreaConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._finish_info
  L3_2 = L3_2.RogueAreaID
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_area
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.AreaNameID
    L3_2(L4_2, L5_2)
    L3_2 = G
    L3_2 = L3_2.RogueUtils
    L3_2 = L3_2.is_rogue_area_show_difficulty
    L4_2 = L2_2.AreaProgress
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_diff
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    if L3_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.text_diff
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = G
      L6_2 = L6_2.UITextUtils
      L6_2 = L6_2.GetRomanNumberTextID
      L7_2 = L2_2.Difficulty
      L6_2, L7_2 = L6_2(L7_2)
      L4_2(L5_2, L6_2, L7_2)
    end
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.create_lua_table_from_cs_list
    L5_2 = A0_2._finish_info
    L5_2 = L5_2.AvatarRewards
    L4_2 = L4_2(L5_2)
    A0_2._first_reward_avatars = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_area
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_diff
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_title = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_score
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = "+"
  L4_2 = A0_2._finish_info
  L4_2 = L4_2.TotalScore
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_score = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._finish_info
  L1_2 = L1_2.TalentCoin
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.is_rogue_talent_unlock
  L1_2 = 0 < L1_2 and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_talent_coin
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_talent_coin
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = "+"
    L5_2 = A0_2._finish_info
    L5_2 = L5_2.TalentCoin
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_talent_coin = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatars
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buffs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_miracles
  L1_2(L2_2)
end
L0_1._setup_record = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._finish_info
  L1_2 = L1_2.RecordAvatarDatas
  L2_2 = L1_2.Count
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.panels_display_avatar
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L6_2 <= L2_2 then
      L8_2 = L6_2 - 1
      L8_2 = L1_2[L8_2]
      if L8_2 then
        goto lbl_16
      end
    end
    L8_2 = nil
    ::lbl_16::
    L10_2 = L7_2
    L9_2 = L7_2.safe_set_active
    L11_2 = L8_2 ~= nil
    L9_2(L10_2, L11_2)
    if L8_2 ~= nil then
      L10_2 = L7_2
      L9_2 = L7_2.set_is_bind_red_dot
      L11_2 = false
      L9_2(L10_2, L11_2)
      L10_2 = L7_2
      L9_2 = L7_2.setup_view
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1._setup_avatars = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._finish_info
  L3_2 = L3_2.RecordBuffDatas
  L1_2(L2_2, L3_2)
end
L0_1._setup_buffs = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_miracle_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._finish_info
  L3_2 = L3_2.RecordMiracleIDs
  L1_2(L2_2, L3_2)
end
L0_1._setup_miracles = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = nil
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.CreateRewardItemTable
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 ~= nil then
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.ItemExcelTable
      L9_2 = L9_2.GetData
      L10_2 = L8_2.ItemID
      L9_2 = L9_2(L10_2)
      L10_2 = L9_2.ItemMainType
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.ItemMainType
      L11_2 = L11_2.AvatarCard
      if L10_2 == L11_2 then
        L2_2 = L9_2.ID
      end
    end
  end
  return L2_2
end
L0_1._get_avatar_id_form_reward_id = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._finish_info
  if L1_2 ~= nil then
    L1_2 = A0_2._finish_info
    L1_2 = L1_2.FirstRewards
    if L1_2 ~= nil then
      L1_2 = A0_2._finish_info
      L1_2 = L1_2.FirstRewards
      L1_2 = L1_2.Count
      if 0 < L1_2 then
        L1_2 = G
        L1_2 = L1_2.RewardUtils
        L1_2 = L1_2.show_reward_dialog
        L2_2 = A0_2._finish_info
        L2_2 = L2_2.FirstRewards
        L3_2 = "UIText_Rogue_Reward_Get_Title"
        L1_2 = L1_2(L2_2, L3_2)
        L3_2 = L1_2
        L2_2 = L1_2.set_display_only
        L4_2 = false
        L2_2(L3_2, L4_2)
        L3_2 = L1_2
        L2_2 = L1_2.set_exit_callback
        function L4_2()
          local L0_3, L1_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3._judge_exit_or_open_page
          L0_3(L1_3)
        end
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._first_reward_avatars
        if L2_2 ~= nil then
          L2_2 = ipairs
          L3_2 = A0_2._first_reward_avatars
          L2_2, L3_2, L4_2 = L2_2(L3_2)
          for L5_2, L6_2 in L2_2, L3_2, L4_2 do
            L7_2 = G
            L7_2 = L7_2.UIManager
            L7_2 = L7_2.load_and_show
            L8_2 = "Ui.Avatar.NewAvatarDropDialog"
            L9_2 = L6_2
            L7_2(L8_2, L9_2)
          end
        end
    end
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._judge_exit_or_open_page
    L1_2(L2_2)
  end
end
L0_1._on_btn_next = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._add_mission_lock = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = L1_2
  L1_2 = L1_2.AddMissionPerformanceLock
  L1_2(L2_2)
end
L0_1._add_mission_lock = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._add_mission_lock
  if L1_2 == true then
    A0_2._add_mission_lock = false
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.MissionModule
    L2_2 = L1_2
    L1_2 = L1_2.ReleaseMissionPerformanceLock
    L1_2(L2_2)
  end
end
L0_1._remove_mission_lock = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = 1.0
  L1_2(L2_2, L3_2)
end
L0_1._on_close_rogue_loading = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_mission_lock
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueModule
  L2_2 = L1_2
  L1_2 = L1_2.ShouldShowMainPage
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.GetPageByName
  L4_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2.exit
    L3_2(L4_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_exit_after_transition
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.RogueModule
  L4_2 = L3_2
  L3_2 = L3_2.ShowRogueMainPage
  L3_2(L4_2)
end
L0_1._judge_exit_or_open_page = L2_1
return L0_1
