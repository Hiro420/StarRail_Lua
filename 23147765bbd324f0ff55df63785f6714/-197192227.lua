local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.RogueNousConfirmDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = "9053"
L1_1 = "Common_ConfirmDialog_Title"
L2_1 = "UIText_RogueNous_TutorialUnfinished_Skip_Tip_2"
L3_1 = "UIText_RogueNous_TutorialUnfinished_Skip_Tip_3"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "RogueNousChessRogueGuideDialog"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousConfirmDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_goto_rogue_nous_guide_mission = A1_2
end
L4_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_ok
  L4_2 = A0_2._on_btn_ok_click
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.EHGJOIBNIHB
  L4_2 = A0_2._on_chess_rogue_skip_teaching_level_sc_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L4_1._add_handlers = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_warning_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_warning_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.EHGJOIBNIHB
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L2_2 = L1_2
  L1_2 = L1_2.SendChessRogueSkipTeachingLevelCsReq
  L1_2(L2_2)
end
L4_1._on_btn_ok_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.CMCHCMDECPE
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_show_skip_reward_dialog
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._is_goto_rogue_nous_guide_mission
    if L0_3 then
      L0_3 = G
      L0_3 = L0_3.RogueNousUtils
      L0_3 = L0_3.try_go_to_guide_phone_message
      L0_3 = L0_3()
      if not L0_3 then
        L0_3 = G
        L0_3 = L0_3.RogueNousUtils
        L0_3 = L0_3.try_go_to_cur_guide_mission
        L0_3()
      end
    end
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.ChessRogueMainPageExit
    L0_3(L1_3)
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.TutorialTaskUnlock
    L2_3 = L0_1
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.exit
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
end
L4_1._on_chess_rogue_skip_teaching_level_sc_rsp = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Promises
  L2_2 = L2_2.Promise
  L2_2 = L2_2()
  L3_2 = A1_2.SkipRewardList
  if L3_2 ~= nil then
    L3_2 = A1_2.SkipRewardList
    L3_2 = L3_2.ItemList_
    if L3_2 ~= nil then
      L3_2 = A1_2.SkipRewardList
      L3_2 = L3_2.ItemList_
      L3_2 = L3_2.Count
      if 0 < L3_2 then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.InventoryModule
        L3_2 = L3_2.GetRewardItemDisplayData
        L4_2 = A1_2.SkipRewardList
        L3_2 = L3_2(L4_2)
        L4_2 = G
        L4_2 = L4_2.RewardUtils
        L4_2 = L4_2.show_reward_dialog
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        L6_2 = L4_2
        L5_2 = L4_2.set_exit_callback
        L7_2 = L2_2.Resolve
        L8_2 = L2_2
        L5_2(L6_2, L7_2, L8_2)
    end
  end
  else
    L4_2 = L2_2
    L3_2 = L2_2.Resolve
    L3_2(L4_2)
  end
  return L2_2
end
L4_1._try_show_skip_reward_dialog = L5_1
return L4_1
