local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueSelectLevelPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueLevelTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueSelectLevelPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
L2_1 = 66
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.settlement_btn
  L4_2 = A0_2._on_settlement_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.up_hint_btn
  L4_2 = A0_2._on_hint_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.down_hint_btn
  L4_2 = A0_2._on_hint_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skip_guide
  L4_2 = A0_2._on_btn_skip_guide_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.up_hint_btn
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.ChessRogueData
  L3_2 = L3_2.AreaInfo
  L3_2 = L3_2.HasInProcessArea
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.down_hint_btn
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.ChessRogueData
  L3_2 = L3_2.AreaInfo
  L3_2 = L3_2.HasInProcessArea
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_datas
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_tab_control
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIRefreshSelectChessRogueLevel
  L4_2 = A0_2._on_chess_rogue_level_select_panel_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_intro_chest
  L4_2 = A0_2._on_btn_intro_chest
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.IsInGuideOne
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ChessRogueUtils
    L1_2 = L1_2.IsInGuideTwo
    L1_2 = L1_2()
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_skip_guide
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._area_data_lst
  L2_2 = L2_2.Count
  if L2_2 == 1 then
    L3_2 = A0_2
    L2_2 = A0_2._on_tab_item_clicked
    L4_2 = 1
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_first_select_index
  L2_2 = L2_2(L3_2)
  A0_2._cur_selected_index = L2_2
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.click_item_by_uid
  L4_2 = A0_2._cur_selected_index
  if not L4_2 then
    L4_2 = 1
  end
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_show_unlock_hint
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._has_unfinished_record
  if L2_2 then
    L2_2 = 0
    L3_2 = A0_2._area_data_lst
    L3_2 = L3_2.Count
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._area_data_lst
      L6_2 = L6_2[L5_2]
      L7_2 = L1_1.ChessRogueData
      L7_2 = L7_2.AreaInfo
      L7_2 = L7_2.CurAreaDataItem
      if L6_2 == L7_2 then
        L1_2 = L5_2 + 1
        return L1_2
      end
    end
  end
  L2_2 = A0_2._area_data_lst
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 0
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._area_data_lst
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.IsUnlocked
    if L6_2 then
      L1_2 = L5_2 + 1
      break
    end
  end
  return L1_2
end
L0_1._get_first_select_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.level_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._cur_area_data
  L3_2 = L3_2.AreaNameID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.level_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._cur_area_data
  L3_2 = L3_2.AreaDescID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.level_difficulty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.UITextUtils
  L3_2 = L3_2.GetRomanNumberTextID
  L4_2 = A0_2._cur_selected_index
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.level_score
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._cur_area_data
  L3_2 = L3_2.LevelScore
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.is_area_the_guide_area_1
  L2_2 = A0_2._cur_area_data
  L2_2 = L2_2.AreaID
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.ChessRogueUtils
    L1_2 = L1_2.is_area_the_guide_area_2
    L2_2 = A0_2._cur_area_data
    L2_2 = L2_2.AreaID
    L1_2 = L1_2(L2_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_score
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unlock_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._cur_area_data
  L4_2 = L4_2.IsUnlocked
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.general_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._cur_area_data
  L4_2 = L4_2.IsHard
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.hard_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._cur_area_data
  L4_2 = L4_2.IsHard
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_reward_panels
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btns
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_hint
  L2_2(L3_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_area_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_first_pass_reward_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_monster_drop_reward_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._clear_reward_animation_state
  L1_2(L2_2)
end
L0_1.refresh_reward_panels = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._cur_area_data
  L2_2 = L1_2
  L1_2 = L1_2.GetFirstPassRewardList
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Count
    if L2_2 ~= 0 then
      goto lbl_15
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.first_pass_reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_15::
  L2_2 = A0_2._binder
  L2_2 = L2_2.first_pass_reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.first_pass_reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = false
  L6_2 = A0_2._cur_area_data
  L6_2 = L6_2.IsFirstRewardTaken
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_first_pass_reward_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_area_data
  L1_2 = L1_2.MonsterDropItems
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_area_data
    L1_2 = L1_2.MonsterDropItems
    L1_2 = L1_2.Length
    if L1_2 ~= 0 then
      goto lbl_16
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_drop_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_16::
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_drop_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_drop_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_area_data
  L3_2 = L3_2.MonsterDropItems
  L1_2(L2_2, L3_2)
end
L0_1._setup_monster_drop_reward_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.ChessRogueData
  L1_2 = L1_2.AreaInfo
  A0_2._area_info = L1_2
  L1_2 = A0_2._area_info
  L2_2 = L1_2
  L1_2 = L1_2.GetAccessibleAreaDataList
  L1_2 = L1_2(L2_2)
  A0_2._area_data_lst = L1_2
  L1_2 = A0_2._area_info
  L1_2 = L1_2.HasInProcessChessRogueArea
  A0_2._has_unfinished_record = L1_2
  L1_2 = A0_2._area_data_lst
  L1_2 = L1_2.Count
  if 0 < L1_2 then
    L1_2 = A0_2._area_data_lst
    L1_2 = L1_2[0]
    A0_2._cur_area_data = L1_2
  end
  L1_2 = L1_1.ChessRogueData
  L1_2 = L1_2.AreaInfo
  L2_2 = L1_2
  L1_2 = L1_2.IsTutorialAllFinished
  L1_2 = L1_2(L2_2)
  A0_2._is_tutorial_finished = L1_2
  L1_2 = A0_2._is_tutorial_finished
  if not L1_2 then
    L1_2 = L1_1.ChessRogueData
    L1_2 = L1_2.AreaInfo
    L2_2 = L1_2
    L1_2 = L1_2.GetUnFinishedTutorialID
    L1_2 = L1_2(L2_2)
    A0_2._unfinished_tutorial_id = L1_2
  end
end
L0_1._init_datas = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._area_info
  L1_2 = L1_2.HasInProcessChessRogueArea
  A0_2._has_unfinished_record = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btns
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_hint
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  if not L1_2 then
    return
  end
  L1_2 = 1
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.item_count
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._tab_control
    L6_2 = L5_2
    L5_2 = L5_2.find_item
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L7_2 = L5_2
    L6_2 = L5_2.reset_status
    L6_2(L7_2)
  end
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.settlement_btn
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._has_unfinished_record
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.confirm_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_area_data
  L3_2 = L3_2.IsUnlocked
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._has_unfinished_record
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.settlement_btn_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Rogue_Btn_Quit"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.confirm_btn_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Rogue_Btn_Continue"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.confirm_btn_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_Rogue_Init_Avatar_Title"
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_btns = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.level_lock_hint_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_area_data
  L3_2 = L3_2.IsUnlocked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_area_data
  L1_2 = L1_2.IsUnlocked
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.RogueUnlockConfigExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._cur_area_data
    L2_2 = L2_2.UnlockID
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.level_lock_hint_txt
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L1_2.RogueUnlockDetail
      L2_2(L3_2, L4_2)
    end
  end
  L1_2 = A0_2._cur_area_data
  L1_2 = L1_2.IsUnlocked
  if L1_2 then
    L1_2 = A0_2._has_unfinished_record
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.level_hint_txt
      L1_2 = L1_2.transform
      L1_2 = L1_2.parent
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.level_hint_txt
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_RogueDLC_Area_RecommendLevel"
      L4_2 = A0_2._cur_area_data
      L4_2 = L4_2.RecommendLevel
      L1_2(L2_2, L3_2, L4_2)
  end
  else
    L1_2 = A0_2._cur_area_data
    L1_2 = L1_2.IsUnlocked
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.level_hint_txt
      L1_2 = L1_2.transform
      L1_2 = L1_2.parent
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.level_hint_txt
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_RogueDLC_ProgressRate"
      L4_2 = G
      L4_2 = L4_2.TextmapStatic
      L4_2 = L4_2.GetText
      L5_2 = A0_2._area_info
      L5_2 = L5_2.CurAreaLayerDataItem
      L5_2 = L5_2.LayerIndexID
      L4_2, L5_2 = L4_2(L5_2)
      L1_2(L2_2, L3_2, L4_2, L5_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.level_hint_txt
      L1_2 = L1_2.transform
      L1_2 = L1_2.parent
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.IsInAnyGuide
  L1_2 = L1_2()
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_max_unlocked_level_index
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = 0
  end
  if L1_2 == 0 then
    return
  end
  L2_2 = A0_2._area_data_lst
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.IsFirstRewardTaken
  if L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.ChessRogueHintedMaxLevel
  if not L2_2 then
    L2_2 = 0
  end
  if L1_2 > L2_2 then
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = "Ui.FarmEnemy.FarmLevelUnlockDialog"
    L5_2 = L1_2 + 1
    L3_2(L4_2, L5_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L3_2.ChessRogueHintedMaxLevel = L1_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.ForceSave
    L3_2()
    L3_2 = A0_2._tab_control
    L4_2 = L3_2
    L3_2 = L3_2.find_item
    L5_2 = L1_2 + 1
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = L3_2
    L4_2 = L3_2.play_unlock
    L4_2(L5_2)
  else
    L3_2 = 1
    L4_2 = L1_2 or L4_2
    if not L1_2 then
      L4_2 = 1
    end
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._tab_control
      L8_2 = L7_2
      L7_2 = L7_2.find_item
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = L7_2
      L8_2 = L7_2.reset_status
      L8_2(L9_2)
    end
  end
end
L0_1._try_show_unlock_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._area_data_lst
  L1_2 = L1_2.Count
  L1_2 = L1_2 - 1
  L2_2 = 0
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._area_data_lst
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.IsUnlocked
    if L6_2 then
      return L4_2
    end
  end
end
L0_1._get_max_unlocked_level_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.first_pass_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.first_pass_reward_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_all_reward_btns
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = pairs
      L3_2 = L1_2
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L8_2 = L6_2
        L7_2 = L6_2.ClearAnimationState
        L7_2(L8_2)
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_drop_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.monster_drop_reward_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_all_reward_btns
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = pairs
      L3_2 = L1_2
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L8_2 = L6_2
        L7_2 = L6_2.ClearAnimationState
        L7_2(L8_2)
      end
    end
  end
end
L0_1._clear_reward_animation_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._tab_control
  if L1_2 ~= nil then
    return
  end
  L1_2 = A0_2._area_data_lst
  L1_2 = L1_2.Count
  if L1_2 <= 1 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.level_tab_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.level_tab_root
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._tab_items = L1_2
  L1_2 = A0_2._area_info
  L1_2 = L1_2.CurRecordChessRogueArea
  L2_2 = 0
  L3_2 = A0_2._area_data_lst
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._area_data_lst
    L6_2 = L6_2[L5_2]
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.ChessRogueLevelTabItem
    L10_2 = G
    L10_2 = L10_2.ChessRogueLevelTabItemBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.setup_view
    L10_2 = L6_2
    L11_2 = L5_2 + 1
    L8_2(L9_2, L10_2, L11_2)
    L9_2 = L7_2
    L8_2 = L7_2.bind
    L10_2 = A0_2._binder
    L10_2 = L10_2.level_tab_root
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._has_unfinished_record
    if L8_2 then
      L9_2 = L7_2
      L8_2 = L7_2.set_tab_enable
      L10_2 = L6_2 == L1_2
      L8_2(L9_2, L10_2)
      if L6_2 == L1_2 then
        L8_2 = L5_2 + 1
        A0_2._cur_selected_index = L8_2
      end
    end
    L8_2 = A0_2._tab_control
    L9_2 = L8_2
    L8_2 = L8_2.add_item
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.update_layout
  L2_2(L3_2)
  L2_2 = A0_2._has_unfinished_record
  if not L2_2 then
    L2_2 = A0_2._tab_control
    L3_2 = L2_2
    L2_2 = L2_2.setup_navigation
    L4_2 = NavigationType
    L4_2 = L4_2.Vertical
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.set_tab_select_callback
  L4_2 = A0_2
  L5_2 = A0_2._on_tab_item_clicked
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._init_tab_control = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._area_data_lst
  L3_2 = A1_2 - 1
  L2_2 = L2_2[L3_2]
  A0_2._cur_area_data = L2_2
  A0_2._cur_selected_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_tab_item_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = "UIText_RogueDLC_ProgressAbandon_HintDesc"
  L3_2 = "Common_ConfirmDialog_Title"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = L1_1
      L2_3 = L1_3
      L1_3 = L1_3.SendGiveUpChessRogueReq
      L1_3(L2_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.show_full_screen_block_for_packet
      L3_3 = CS
      L3_3 = L3_3.NIJNBICAPPA
      L3_3 = L3_3.AFBIOHLMHBK
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_settlement_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._has_unfinished_record
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.RogueDLC.ChessRogue.Entrance.ChessRogueAvatarSelectPage"
    L3_2 = A0_2._cur_area_data
    L1_2(L2_2, L3_2)
  else
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.SendReEnterRogueReq
    L1_2(L2_2)
  end
end
L0_1._on_confirm_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Common.CommonIntroduceDialog"
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_intro_chest = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.Guide.RogueNousSkipChessRogueGuideDialog"
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_skip_guide_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._tab_control
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = A0_2._cur_selected_index
  if not L3_2 then
    L3_2 = 1
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_chess_rogue_level_select_panel_refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.first_pass_reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_all_reward_btns
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.monster_drop_reward_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_all_reward_btns
  L3_2, L4_2 = L3_2(L4_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_multi_line_navigation
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._setup_reward_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._tab_control
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.get_first_selected_object_zone_2
    return L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_first_select_index
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._tab_control
  L3_2 = L2_2
  L2_2 = L2_2.find_item_gameObject
  L4_2 = L1_2
  return L2_2(L3_2, L4_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.first_pass_reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object_zone_2 = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_Rogue_EnterPage_Tip_2"
  L1_2(L2_2, L3_2)
end
L0_1._on_hint_btn_clicked = L3_1
return L0_1
