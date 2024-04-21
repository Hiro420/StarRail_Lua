local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Settlement.ChessRogueFinishExplorePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueFinishExplorePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
L2_1 = "9050"
L3_1 = "9325"
L4_1 = "RogueDLC_Entrance_Locked_Round1_SubMissionID"
L5_1 = "RogueDLC_Entrance_Unlock_Round1_SubMissionID"
L6_1 = "RogueDLC_Entrance_Locked_Round2_SubMissionID"
L7_1 = "RogueDLC_Entrance_Unlock_Round2_SubMissionID"
L8_1 = "RogueDLC_Entrance_Locked_Round3_SubMissionID"
L9_1 = "RogueDLC_Entrance_Unlock_Round3_SubMissionID"
L10_1 = "RogueDLC_Entrance_Locked_Round4_SubMissionID"
L11_1 = "RogueDLC_Entrance_Unlock_Round4_SubMissionID"
L12_1 = {}
L13_1 = CS
L13_1 = L13_1.RPG
L13_1 = L13_1.GameCore
L13_1 = L13_1.RogueSubMode
L13_1 = L13_1.ChessRogue
L12_1[L13_1] = "Ui.RogueDLC.ChessRogue.Entrance.ChessRogueMainPage"
L13_1 = CS
L13_1 = L13_1.RPG
L13_1 = L13_1.GameCore
L13_1 = L13_1.RogueSubMode
L13_1 = L13_1.ChessRogueNous
L12_1[L13_1] = "Ui.RogueDLC.RogueNous.Entrance.RogueNousMainPage"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueFinishExplorePageBinder
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
L0_1.ctor = L13_1
function L13_1(A0_2, A1_2)
  A0_2._finish_info = A1_2
end
L0_1.init = L13_1
function L13_1(A0_2)
  local L1_2
  A0_2._finish_info = nil
  A0_2._first_reward_avatar_id = nil
end
L0_1._on_dispose = L13_1
function L13_1(A0_2)
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
L0_1._on_load = L13_1
function L13_1(A0_2)
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
L0_1._add_handlers = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L1_2 = A0_2._finish_info
  L1_2 = L1_2.IsFinishByTalkDialog
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._finish_info
  L1_2 = L1_2.SubMode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueSubMode
  L2_2 = L2_2.ChessRogueNous
  if L1_2 == L2_2 then
    L1_2 = A0_2._finish_info
    L1_2 = L1_2.TalentCoinAddNumHighlighted
    if 0 < L1_2 then
      L1_2 = G
      L1_2 = L1_2.NotifyManager
      L1_2 = L1_2.notify
      L2_2 = G
      L2_2 = L2_2.CS
      L2_2 = L2_2.NotifyType
      L2_2 = L2_2.TutorialTaskUnlock
      L3_2 = L3_1
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_view = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_next
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_virtual_item
  L1_2(L2_2)
end
L0_1._setup_result = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._finish_info
  L1_2 = L1_2.IsWin
  if not L1_2 then
    L1_2 = false
  end
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
  L2_2 = L2_2.node_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._finish_info
  L2_2 = L2_2.LayerID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueDLCLayerExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_layer
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2 ~= nil
  L4_2(L5_2, L6_2)
  if L3_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_layer
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.LayerNumID
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._finish_info
  L4_2 = L4_2.SubMode
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.RogueSubMode
  L5_2 = L5_2.ChessRogueNous
  if L4_2 == L5_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_area
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_RogueNous_MainMenu_Story"
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_area
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_RogueDLC_MainStory"
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_difficulty
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.difficulty_txt
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = G
  L6_2 = L6_2.UITextUtils
  L6_2 = L6_2.GetRomanNumberTextID
  L7_2 = A0_2._finish_info
  L7_2 = L7_2.Difficulty
  L6_2, L7_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_title = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._finish_info
  L1_2 = L1_2.SubMode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueSubMode
  L2_2 = L2_2.ChessRogue
  if L1_2 == L2_2 then
    L1_2 = A0_2._finish_info
    L1_2 = L1_2.AreaID
    if 0 < L1_2 then
      L1_2 = A0_2._finish_info
      L1_2 = L1_2.AreaID
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.ChessRogueUtils
      L2_2 = L2_2.GetGuideOneAreaID
      L2_2 = L2_2()
      if L1_2 ~= L2_2 then
        L1_2 = A0_2._finish_info
        L1_2 = L1_2.AreaID
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.ChessRogueUtils
        L2_2 = L2_2.GetGuideTwoAreaID
        L2_2 = L2_2()
        if L1_2 ~= L2_2 then
          goto lbl_40
        end
      end
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_virtual_item
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      return
    end
  end
  ::lbl_40::
  L1_2 = A0_2._finish_info
  L1_2 = L1_2.SubMode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueSubMode
  L2_2 = L2_2.ChessRogueNous
  if L1_2 == L2_2 then
    L1_2 = A0_2._finish_info
    L1_2 = L1_2.AreaID
    if 0 < L1_2 then
      L1_2 = A0_2._finish_info
      L1_2 = L1_2.AreaID
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.RogueNousUtils
      L2_2 = L2_2.GetGuideOneAreaID
      L2_2 = L2_2()
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.node_virtual_item
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = false
        L1_2(L2_2, L3_2)
        return
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_score
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_talent_coin
  L1_2(L2_2)
end
L0_1._setup_virtual_item = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_score
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._finish_info
  L3_2 = L3_2.RogueScoreAddNum
  L1_2(L2_2, L3_2)
end
L0_1._setup_score = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._finish_info
  L1_2 = L1_2.SubMode
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueSubMode
  L2_2 = L2_2.ChessRogueNous
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_talent_coin
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_talent_coin
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.is_talent_tree_unlocked
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = A0_2._finish_info
    L3_2 = L3_2.TalentCoinAddNum
    L4_2 = A0_2._finish_info
    L4_2 = L4_2.TalentCoinAddNumHighlighted
    L3_2 = L3_2 + L4_2
    L3_2 = 0 < L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_talent_coin_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Rogue_Nous_Nerve_Coin_Get_Tip"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_talent_coin_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._finish_info
  L3_2 = L3_2.TalentCoinAddNum
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_talent_coin_num_highlighted
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._finish_info
  L3_2 = L3_2.TalentCoinAddNumHighlighted
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_talent_coin_num_highlighted
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = "+"
  L4_2 = tostring
  L5_2 = A0_2._finish_info
  L5_2 = L5_2.TalentCoinAddNumHighlighted
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.get_talent_coin_item_row
  L1_2 = L1_2()
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_talent_coin
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_talent_coin = L13_1
function L13_1(A0_2)
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
L0_1._setup_record = L13_1
function L13_1(A0_2)
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
L0_1._setup_avatars = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._finish_info
  L3_2 = L3_2.RecordBuffDatas
  L1_2(L2_2, L3_2)
end
L0_1._setup_buffs = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_miracle_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._finish_info
  L3_2 = L3_2.RecordMiracleIDs
  L1_2(L2_2, L3_2)
end
L0_1._setup_miracles = L13_1
function L13_1(A0_2, A1_2)
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
L0_1._get_avatar_id_form_reward_id = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
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
        L2_2 = L1_2.set_exit_callback
        function L4_2()
          local L0_3, L1_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3._judge_exit_or_open_page
          L0_3(L1_3)
        end
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._first_reward_avatar_id
        if L2_2 ~= nil then
          L2_2 = G
          L2_2 = L2_2.RewardUtils
          L2_2 = L2_2.create_add_new_avatar_info
          L3_2 = A0_2._first_reward_avatar_id
          L4_2 = A0_2._finish_info
          L4_2 = L4_2.FirstRewards
          L2_2 = L2_2(L3_2, L4_2)
          L3_2 = G
          L3_2 = L3_2.UIManager
          L3_2 = L3_2.load_and_show
          L4_2 = "Ui.Avatar.NewAvatarDropDialog"
          L5_2 = L2_2
          L3_2(L4_2, L5_2)
        end
    end
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2._judge_exit_or_open_page
    L1_2(L2_2)
  end
end
L0_1._on_btn_next = L13_1
function L13_1(A0_2)
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
L0_1._add_mission_lock = L13_1
function L13_1(A0_2)
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
L0_1._remove_mission_lock = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = 1.0
  L1_2(L2_2, L3_2)
end
L0_1._on_close_rogue_loading = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_judge_statues
  if L1_2 then
    return
  end
  A0_2._is_judge_statues = true
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.PrepareAllChessRogueMissions
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaAction
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._try_exit_and_clear_ui_stack_or_close_top
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._judge_exit_or_open_page = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._get_sub_mission_status
  L3_2 = L4_1
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_sub_mission_status
  L4_2 = L5_1
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_sub_mission_status
  L5_2 = L6_1
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_sub_mission_status
  L6_2 = L7_1
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._get_sub_mission_status
  L7_2 = L8_1
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_sub_mission_status
  L8_2 = L9_1
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2._get_sub_mission_status
  L9_2 = L10_1
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = A0_2
  L8_2 = A0_2._get_sub_mission_status
  L10_2 = L11_1
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = G
  L9_2 = L9_2.RogueNousUtils
  L9_2 = L9_2.should_back_to_first_page_after_settlement
  L9_2 = L9_2()
  if L9_2 then
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.GlobalVars
    L9_2 = L9_2.s_UIManager
    L10_2 = L9_2
    L9_2 = L9_2.BackToFirstPage
    L9_2(L10_2)
    return
  end
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.SubMissionState
  L9_2 = L9_2.Finish
  if L1_2 ~= L9_2 then
    L9_2 = A0_2._finish_info
    L9_2 = L9_2.IsFromInGame
    if L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2._exit_and_open_main_page
      L9_2(L10_2)
    else
      L10_2 = A0_2
      L9_2 = A0_2._exit_and_close_top_page
      L9_2(L10_2)
    end
    return
  end
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.SubMissionState
  L9_2 = L9_2.Finish
  if L2_2 ~= L9_2 then
    L9_2 = A0_2._finish_info
    L9_2 = L9_2.IsFromInGame
    if L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2.exit
      L9_2(L10_2)
    else
      L10_2 = A0_2
      L9_2 = A0_2._exit_and_close_all_page
      L9_2(L10_2)
    end
    return
  else
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.SubMissionState
    L9_2 = L9_2.Finish
    if L3_2 ~= L9_2 then
      L9_2 = A0_2._finish_info
      L9_2 = L9_2.IsFromInGame
      if L9_2 then
        L10_2 = A0_2
        L9_2 = A0_2._exit_and_open_main_page
        L9_2(L10_2)
      else
        L10_2 = A0_2
        L9_2 = A0_2._exit_and_close_top_page
        L9_2(L10_2)
      end
      return
    end
  end
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.SubMissionState
  L9_2 = L9_2.Finish
  if L4_2 ~= L9_2 then
    L9_2 = A0_2._finish_info
    L9_2 = L9_2.IsFromInGame
    if L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2.exit
      L9_2(L10_2)
    else
      L10_2 = A0_2
      L9_2 = A0_2._exit_and_close_all_page
      L9_2(L10_2)
    end
    return
  else
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.SubMissionState
    L9_2 = L9_2.Finish
    if L5_2 ~= L9_2 then
      L9_2 = A0_2._finish_info
      L9_2 = L9_2.IsFromInGame
      if L9_2 then
        L10_2 = A0_2
        L9_2 = A0_2._exit_and_open_main_page
        L9_2(L10_2)
      else
        L10_2 = A0_2
        L9_2 = A0_2._exit_and_close_top_page
        L9_2(L10_2)
      end
      return
    end
  end
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.SubMissionState
  L9_2 = L9_2.Finish
  if L6_2 ~= L9_2 then
    L9_2 = A0_2._finish_info
    L9_2 = L9_2.IsFromInGame
    if L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2.exit
      L9_2(L10_2)
    else
      L10_2 = A0_2
      L9_2 = A0_2._exit_and_close_all_page
      L9_2(L10_2)
    end
    return
  else
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.SubMissionState
    L9_2 = L9_2.Finish
    if L7_2 ~= L9_2 then
      L9_2 = A0_2._finish_info
      L9_2 = L9_2.IsFromInGame
      if L9_2 then
        L10_2 = A0_2
        L9_2 = A0_2._exit_and_open_main_page
        L9_2(L10_2)
      else
        L10_2 = A0_2
        L9_2 = A0_2._exit_and_close_top_page
        L9_2(L10_2)
      end
      return
    end
  end
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.SubMissionState
  L9_2 = L9_2.Finish
  if L8_2 ~= L9_2 then
    L9_2 = A0_2._finish_info
    L9_2 = L9_2.IsFromInGame
    if L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2.exit
      L9_2(L10_2)
    else
      L10_2 = A0_2
      L9_2 = A0_2._exit_and_close_all_page
      L9_2(L10_2)
    end
    return
  else
    L9_2 = A0_2._finish_info
    L9_2 = L9_2.IsFromInGame
    if L9_2 then
      L10_2 = A0_2
      L9_2 = A0_2._exit_and_open_main_page
      L9_2(L10_2)
    else
      L10_2 = A0_2
      L9_2 = A0_2._exit_and_close_top_page
      L9_2(L10_2)
    end
    return
  end
end
L0_1._try_exit_and_clear_ui_stack_or_close_top = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.UintValue
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.GetSubMissionState
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
L0_1._get_sub_mission_status = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TopPage
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.LuaTable
  if L2_2 == nil then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.exit
  L3_2(L4_2)
end
L0_1._exit_and_close_top_page = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.BackToFirstPage
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._exit_and_close_all_page = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_exit_after_transition
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._finish_info
  L1_2 = L1_2.SubMode
  L1_2 = L12_1[L1_2]
  if L1_2 == nil then
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
end
L0_1._exit_and_open_main_page = L13_1
return L0_1
