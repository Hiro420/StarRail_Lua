local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RogueModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueEndlessMazeMainPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueFinish
  L4_2 = L1_1._on_rogue_finished
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessGiftRogueCoin
  L4_2 = L1_1._on_rogue_endless_gift_rogue_coin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueEndlessShowShopInfo
  L4_2 = L1_1._on_rogue_endless_show_shop_info
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.CurrentStatus
  L2_2 = CS
  L2_2 = L2_2.MLCDPMIBLBK
  L2_2 = L2_2.NHPJJMMAPAM
  L2_2 = L1_2 == L2_2
  L3_2 = nil
  if L2_2 then
    L3_2 = "UIText_ActivityRogueEndless_Only_Normal_Tip_1"
  end
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = G
  L5_2 = L5_2.CommonExitPage
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_desc
  L7_2 = "UIText_Rogue_Exit_Explore_Desc"
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_btn1
  function L7_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = L0_1.EndlessProgressInfo
    L0_3 = L0_3.CurAreaID
    L1_3 = L0_1
    L2_3 = L1_3
    L1_3 = L1_3.RogueEndlessGetAreaData
    L3_3 = L0_3
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = L2_2
    if L2_3 then
      L2_3 = L1_3.HasEnteredEndless
      if not L2_3 then
        L2_3 = CS
        L2_3 = L2_3.RPG
        L2_3 = L2_3.Client
        L2_3 = L2_3.ConfirmDialogUtil
        L2_3 = L2_3.ShowOkCancelHint
        L3_3 = "UIText_ActivityRogueEndless_Only_Normal_Tip_2"
        L4_3 = ""
        function L5_3(A0_4)
          local L1_4, L2_4
          if A0_4 then
            L1_4 = L0_1
            L2_4 = L1_4
            L1_4 = L1_4.LeaveRogue
            L1_4(L2_4)
          end
        end
        L2_3(L3_3, L4_3, L5_3)
    end
    else
      L2_3 = L0_1
      L3_3 = L2_3
      L2_3 = L2_3.LeaveRogue
      L2_3(L3_3)
    end
  end
  L8_2 = "UIText_Rogue_Btn_Leave"
  L9_2 = nil
  L10_2 = nil
  L11_2 = L3_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_btn2
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = L0_1
    L1_3 = L0_3
    L0_3 = L0_3.GetRogueData
    L0_3 = L0_3(L1_3)
    L0_3 = L0_3.CurrentStatus
    L0_3 = #L0_3
    L1_3 = G
    L1_3 = L1_3.UtilEngineWrap
    L1_3 = L1_3.ConvCsEnumToNum
    L2_3 = CS
    L2_3 = L2_3.MLCDPMIBLBK
    L2_3 = L2_3.MIKAMDENMMJ
    L1_3 = L1_3(L2_3)
    if L0_3 == L1_3 then
      L1_3 = L0_1
      L2_3 = L1_3
      L1_3 = L1_3.LeaveRogue
      L1_3(L2_3)
    else
      L1_3 = L0_1
      L2_3 = L1_3
      L1_3 = L1_3.QuitCurrentRogue
      L1_3(L2_3)
    end
  end
  L8_2 = "UIText_Rogue_Btn_Quit"
  L9_2 = "UIText_Rogue_Exit_Explore_Desc_Tip_6"
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_btn2_display
  L7_2 = not L2_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.async_show
  L5_2(L6_2)
end
L1_1.show_exit_page = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._show_rogue_toast
  L4_2 = "Ui.RogueDLC.RogueEndless.Finish.RogueEndlessExploreFinishPage"
  L5_2 = A1_2
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_rogue_toast
  L4_2 = "Ui.RogueDLC.RogueEndless.Maze.Entrance.RogueEndlessOpenDialog"
  L2_2(L3_2, L4_2)
end
L1_1._on_rogue_finished = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if 0 < A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ItemFactory
    L2_2 = L2_2.CreateDisplayItemData
    L3_2 = G
    L3_2 = L3_2.UtilEngineWrap
    L3_2 = L3_2.ConvCsEnumToNum
    L4_2 = CS
    L4_2 = L4_2.HGGDPEHMDBH
    L4_2 = L4_2.NIBJBHPOFNO
    L3_2 = L3_2(L4_2)
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._show_rogue_toast
    L5_2 = "Ui.Common.RewardDialog"
    L6_2 = {}
    L7_2 = L2_2
    L6_2[1] = L7_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1._on_rogue_endless_gift_rogue_coin = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeEndOfFrame
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._show_rogue_toast
    L2_3 = "Ui.RogueDLC.RogueEndless.Maze.Toast.RogueEndlessShopInfoToastDialog"
    L3_3 = A1_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L2_2(L3_2)
end
L1_1._on_rogue_endless_show_shop_info = L2_1
function L2_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.ToastModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.inqueue_toast_checkmainpage
  L4_2 = "FullScreenToast"
  L5_2 = 1
  L6_2 = A1_2
  L7_2 = nil
  L8_2 = ...
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L1_1._show_rogue_toast = L2_1
return L1_1
