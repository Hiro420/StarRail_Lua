local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumPerformanceCommentPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumPerformanceCommentPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumPerformancePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MuseumModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MuseumPerformancePage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
L2_1 = "SkipMuseumPerformance"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumPerformancePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._comments = L1_2
  A0_2._is_resp_esc = false
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveBlack
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.TransitionStyle_CloseWithCut
  L1_2 = L1_2 | L2_2
  A0_2._transition_style = L1_2
end
L1_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MuseumModule
  L2_2 = L2_2.MuseumData
  A0_2._museum_data = L2_2
  A0_2._area_id = A1_2
end
L1_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.comment_list_view
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_comment_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumClosePerformancePage
  L4_2 = A0_2._on_close_page
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MuseumPerformanceEnd
  L1_2(L2_2)
end
L1_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.MuseumUtils
  L1_2 = L1_2.get_max_area_num
  L1_2 = L1_2()
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.area_panels
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.safe_set_active
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L2_2 = {}
  A0_2._available_area_num = L1_2
  L3_2 = 1
  L4_2 = L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._museum_data
    L8_2 = L7_2
    L7_2 = L7_2.GetAreaData
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L2_2[L6_2] = L7_2
    L7_2 = L2_2[L6_2]
    L7_2 = L7_2.IsLock
    if L7_2 then
      L7_2 = L6_2 - 1
      A0_2._available_area_num = L7_2
      break
    end
  end
  L3_2 = 1
  L4_2 = A0_2._available_area_num
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.area_panels
    L8_2 = A0_2._available_area_num
    L8_2 = L8_2 - L6_2
    L8_2 = L8_2 + 1
    L7_2 = L7_2[L8_2]
    L9_2 = L7_2
    L8_2 = L7_2.setup_view
    L10_2 = L2_2[L6_2]
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.set_fill_end_callback
    function L10_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._on_area_bar_fill_end
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.play
    L8_2(L9_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_comment
  L3_2(L4_2)
end
L1_1._setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.MuseumPerformanceCommentPanel
  L8_2 = G
  L8_2 = L8_2.MuseumPerformanceCommentPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._comments
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L1_1._on_comment_item_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._comments = L1_2
  L1_2 = A0_2._museum_data
  L2_2 = L1_2
  L1_2 = L1_2.GetAreaData
  L3_2 = A0_2._area_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetRandomComments
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._comments
    L9_2 = L2_2[L6_2]
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.comment_list_view
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._comments
  L5_2 = #L5_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.comment_list_view
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.comment_list_view
  L4_2 = L3_2
  L3_2 = L3_2.PlayFadeIn
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.thumb_animator
  L4_2 = L3_2
  L3_2 = L3_2.SetTrigger
  L5_2 = "Loop"
  L3_2(L4_2, L5_2)
end
L1_1._setup_comment = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.thumb_animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Remind"
    L2_2(L3_2, L4_2)
  end
end
L1_1._on_area_bar_fill_end = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_close_page = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.trigger_custom_string
  L2_2 = L2_1
  L1_2(L2_2)
end
L1_1._on_btn_close_click = L3_1
return L1_1
