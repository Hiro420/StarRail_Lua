local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.Record.PlayerRogueRecordDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerRogueRecordDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PlayerRogueRecordDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  A0_2._finish_info = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._finish_info = A1_2
  A0_2._data = A2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = L0_1._on_btn_next
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.set_interactable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Scroll"
  L3_2[1] = L4_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L1_1
function L1_1(A0_2)
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
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_next
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L1_1
function L1_1(A0_2)
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
L0_1._setup_result = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_succ_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_fail_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_player_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_by_id
  L3_2 = A0_2._data
  L3_2 = L3_2.HeadIconID
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_player_photo
  L2_2 = L1_2
  L1_2 = L1_2.set_level
  L3_2 = A0_2._data
  L3_2 = L3_2.PlayerLevel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._data
  L3_2 = L3_2.NickName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_room
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._finish_info
  L3_2 = L3_2.ReachRoomCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_room_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._finish_info
  L3_2 = L3_2.TotalRoomCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_area
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._finish_info
  L3_2 = L3_2.AreaName
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.is_rogue_area_show_difficulty
  L2_2 = A0_2._finish_info
  L2_2 = L2_2.AreaRow
  L2_2 = L2_2.AreaProgress
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_diff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_diff
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = G
    L4_2 = L4_2.UITextUtils
    L4_2 = L4_2.GetRomanNumberTextID
    L5_2 = A0_2._finish_info
    L5_2 = L5_2.Difficulty
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_click_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_RewardDialog_CloseBtn"
  L2_2(L3_2, L4_2)
end
L0_1._setup_title = L1_1
function L1_1(A0_2)
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
L0_1._setup_score = L1_1
function L1_1(A0_2)
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
L0_1._setup_talent_coin = L1_1
function L1_1(A0_2)
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
L0_1._setup_record = L1_1
function L1_1(A0_2)
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
L0_1._setup_avatars = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._finish_info
  L3_2 = L3_2.RecordBuffDatas
  L1_2(L2_2, L3_2)
end
L0_1._setup_buffs = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_miracle_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._finish_info
  L3_2 = L3_2.RecordMiracleIDs
  L1_2(L2_2, L3_2)
end
L0_1._setup_miracles = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_next = L1_1
return L0_1
