local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Shop.MonthCardAwardDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ButtonMutex"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonthCardAwardDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PayModule
L2_1 = "MonthCard_AwardGet"
L3_1 = "MonthCardAward_AwardProgress"
L4_1 = {}
L4_1.None = 1
L4_1.Progress = 2
L4_1.Get = 3
L4_1.Final = 4
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MonthCardAwardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  A0_2._item = A1_2
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_bg
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root_controller
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L2_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_anim_award_get_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_card_controller
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_anim_award_progress_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StoryModeChange
  L4_2 = A0_2._on_story_mode_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BeginPlayVideo
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FinishRewardToast
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeToBattleTransitBegin
  L4_2 = A0_2._on_notify_finish
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1.MonthCardRemainTime
  if L1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ConstValueClientExcelTable
    L2_2 = L2_2.GetData
    L3_2 = "MonthCard_Remind_Day"
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.Value
    L2_2 = L2_2.UintValue
    L3_2 = L1_2.Days
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_remain_day
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    if L2_2 >= L3_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.text_remain_day
      L5_2 = G
      L5_2 = L5_2.UIColorUtils
      L5_2 = L5_2.GetColor
      L6_2 = "#eb4d3d"
      L5_2 = L5_2(L6_2)
      L4_2.color = L5_2
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_tips
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = true
      L4_2(L5_2, L6_2)
    end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_remain_day
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = 0
    L2_2(L3_2, L4_2)
  end
  L2_2 = nil
  L3_2 = A0_2._item
  L3_2 = L3_2.UID
  if L3_2 ~= nil then
    L3_2 = A0_2._item
    L3_2 = L3_2.UID
    if L3_2 ~= 0 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_ModuleManager
      L3_2 = L3_2.InventoryModule
      L4_2 = L3_2
      L3_2 = L3_2.GetItemDataByUID
      L5_2 = A0_2._item
      L5_2 = L5_2.UID
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
  end
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_ModuleManager
    L3_2 = L3_2.InventoryModule
    L4_2 = L3_2
    L3_2 = L3_2.GetItemDataByConfigID
    L5_2 = A0_2._item
    L5_2 = L5_2.ConfigID
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view_by_item
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_name
    L5_2 = L2_2.Name
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_name_display
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_count
    L5_2 = A0_2._item
    L5_2 = L5_2.Count
    L3_2(L4_2, L5_2)
  end
  L3_2 = L4_1.None
  A0_2._step = L3_2
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._step
  L2_2 = L4_1.Get
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = L4_1.Final
  A0_2._step = L1_2
end
L0_1._on_anim_award_get_end = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._step
  L2_2 = L4_1.Progress
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = L4_1.Get
  A0_2._step = L1_2
end
L0_1._on_anim_award_progress_end = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._step
    L1_3 = L4_1.None
    if L0_3 == L1_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.anim_card
      L1_3 = L0_3
      L0_3 = L0_3.Play
      L2_3 = L3_1
      L0_3(L1_3, L2_3)
      L0_3 = L4_1.Progress
      A0_2._step = L0_3
    else
      L0_3 = A0_2._step
      L1_3 = L4_1.Progress
      if L0_3 == L1_3 then
        L0_3 = A0_2._binder
        L0_3 = L0_3.anim_root
        L1_3 = L0_3
        L0_3 = L0_3.Play
        L2_3 = L2_1
        L0_3(L1_3, L2_3)
        L0_3 = L4_1.Get
        A0_2._step = L0_3
      else
        L0_3 = A0_2._step
        L1_3 = L4_1.Final
        if L0_3 == L1_3 then
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3.exit
          L0_3(L1_3)
        end
      end
    end
  end
  L2_2 = A0_2._button_mutex
  L3_2 = L2_2
  L2_2 = L2_2.Check
  function L4_2()
    local L0_3, L1_3
    L0_3 = L1_2
    L0_3()
  end
  L5_2 = 0.2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_bg = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_view_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_notify_finish = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_notify_finish
  L2_2(L3_2)
end
L0_1._on_story_mode_changed = L5_1
return L0_1
