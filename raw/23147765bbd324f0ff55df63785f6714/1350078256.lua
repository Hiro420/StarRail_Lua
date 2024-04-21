local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.StoryLine.ChooseChapter.ActivityClockParkStoryLineChooseChapterDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityClockParkStoryLineChooseChapterDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityClockParkModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.ClockParkGameStateEnum
L3_1 = 1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkStoryLineChooseChapterDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_choose
  L4_2 = A0_2._on_btn_choose_chapter
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = "5302"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 66
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1.ClockParkInstance
  L1_2 = L1_2.ScriptInfo
  A0_2._script_info = L1_2
  L1_2 = A0_2._script_info
  L1_2 = L1_2.DataRef
  L1_2 = L1_2.ReachedChapterList
  L1_2 = L1_2.Count
  if 0 < L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = "5318"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._script_info
  L1_2 = L1_2.ScriptID
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_normal
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L3_1
  L4_2 = L1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_new_player
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L3_1
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_choose
  L2_2(L3_2)
  L2_2 = L3_1
  if L1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_new_player
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._script_info
    L5_2 = A0_2._on_chapter_select
    L6_2 = A0_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_normal
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._script_info
    L5_2 = A0_2._on_chapter_select
    L6_2 = A0_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_enter_zoom
  L4_2 = NavigationZoneType
  L4_2 = L4_2.Zone1
  L2_2(L3_2, L4_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_close_btn_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._selected_chapter_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_choose
  L2_2(L3_2)
end
L0_1._on_chapter_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.ClockParkInstance
  L1_2 = L1_2.CurGameStateEnum
  L2_2 = L2_1.SelectStartChapter
  if L1_2 == L2_2 then
    L1_2 = A0_2._script_info
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = A0_2._selected_chapter_id
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "clock park select chapter id is null"
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._can_choose_chapter
  L3_2 = A0_2._selected_chapter_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == false then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "clock park select chapter id is invalid"
    L1_2(L2_2)
    return
  end
  L1_2 = L1_1.ClockParkInstance
  L1_2 = L1_2.CurGameState
  L3_2 = L1_2
  L2_2 = L1_2.SetSelectedChapterID
  L4_2 = A0_2._selected_chapter_id
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_btn_choose_chapter = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._selected_chapter_id
  if L1_2 ~= nil then
    L1_2 = A0_2._script_info
    if L1_2 ~= nil then
      goto lbl_11
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_choose
  L1_2.interactable = false
  do return end
  ::lbl_11::
  L2_2 = A0_2
  L1_2 = A0_2._can_choose_chapter
  L3_2 = A0_2._selected_chapter_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == false then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_ClockPark_ChapterPick_UnlockTip"
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_choose
  L3_2 = A0_2
  L2_2 = A0_2._can_choose_chapter
  L4_2 = A0_2._selected_chapter_id
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.interactable = L2_2
end
L0_1._refresh_btn_choose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._script_info
  L2_2 = L2_2.DataRef
  L3_2 = L2_2
  L2_2 = L2_2.IsChapterEndReached
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2._script_info
  L2_2 = L2_2.DataRef
  L2_2 = L2_2.Row
  L2_2 = L2_2.StartChapterID
  if L2_2 == A1_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2._script_info
  L2_2 = L2_2.DataRef
  L3_2 = L2_2
  L2_2 = L2_2.IsReachedTrueEnding
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._script_info
    L2_2 = L2_2.DataRef
    L2_2 = L2_2.Row
    L2_2 = L2_2.ScriptEndingUnlockChapterID
    if A1_2 == L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._can_choose_chapter = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.ClockParkInstance
  L1_2 = L1_2.CurGameStateEnum
  L2_2 = L2_1.SelectStartChapter
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = L1_1.ClockParkInstance
  L1_2 = L1_2.CurGameState
  L3_2 = L1_2
  L2_2 = L1_2.FinishRound
  L2_2(L3_2)
end
L0_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_new_player
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_new_player
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_normal
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_normal
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
end
L0_1.get_first_selected_object = L4_1
return L0_1
