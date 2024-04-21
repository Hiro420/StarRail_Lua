local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailPostInfoItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailPostInfoItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailCommentMainItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailCommentMainItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailCommentSubItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailCommentSubItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailCommentMissionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailCommentMissionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailCommentReplyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSMain.SNSDetail.HeliobusSNSDetailCommentReplyPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSDetailCommentPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = {}
L3_1.Main = 0
L3_1.Sub = 1
L3_1.PostInfo = 2
L4_1 = 0.07
L5_1 = 5000
L6_1 = 0.17
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_comment
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_view_comment_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSDetailCommentMissionPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSDetailCommentMissionPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._mission_panel = L1_2
  L1_2 = A0_2._mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_take_mission_callback
  L3_2 = A0_2._on_click_take_mission
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_go_to_mission_btn_callback
  L3_2 = A0_2._on_click_go_to_mission
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_mission
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSDetailCommentReplyPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSNSDetailCommentReplyPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._reply_panel = L1_2
  L1_2 = A0_2._reply_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_open_reply_callback
  L3_2 = A0_2._on_open_reply
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._reply_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_close_reply_callback
  L3_2 = A0_2._on_close_reply
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._reply_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_reply_callback
  L3_2 = A0_2._on_click_reply
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._reply_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_reply_comment_callback
  L3_2 = A0_2._on_click_comment_reply
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._reply_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reply_panel
  L1_2(L2_2, L3_2)
  L1_2 = typeof
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonoPerformanceUITransfer
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.ComponentExtensions
  L2_2 = L2_2.SafeGetCmpt
  L3_2 = L1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L5_2 = ""
  L6_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  A0_2._mono_ticker = L2_2
  L2_2 = A0_2._mono_ticker
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.ComponentExtensions
    L2_2 = L2_2.SafeAddCmpt
    L3_2 = L1_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.root
    L5_2 = ""
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._mono_ticker = L2_2
  end
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_selected_index
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.scroll_view_comment
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = A0_2._cur_selected_index
    L3_2 = L3_2 - 1
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      L2_2 = L2_2._binder
      L2_2 = L2_2.btn_reply
      L2_2 = L2_2.gameObject
      return L2_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_comment_selected_object = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission
  L1_2 = L1_2.gameObject
  L1_2 = L1_2.activeSelf
  return L1_2
end
L0_1.get_is_mission_panel_open = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mission_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_sp_zoom_btn
  return L1_2(L2_2)
end
L0_1.get_first_sp_zoom_btn = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._reply_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_is_reply_panle_open
  return L1_2(L2_2)
end
L0_1.get_is_reply_panel_open = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._reply_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_open_reply_btn
  return L1_2(L2_2)
end
L0_1.get_first_reply_panel_btn = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._reply_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_is_opt_panel_open
  return L1_2(L2_2)
end
L0_1.get_is_opt_panel_open = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._take_mission_callback = A1_2
  A0_2._take_mission_callback_self = A2_2
end
L0_1.register_take_mission_btn_callback = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._go_to_mission_callback = A1_2
  A0_2._go_to_mission_callback_self = A2_2
end
L0_1.register_go_to_mission_btn_callback = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._reply_callback = A1_2
  A0_2._reply_callback_self = A2_2
end
L0_1.register_reply_callback = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._reply_comment_callback = A1_2
  A0_2._reply_comment_callback_self = A2_2
end
L0_1.register_reply_comment_callback = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_comment
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = 0
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_new_anim_length
  return L2_2(L3_2)
end
L0_1.get_new_comment_anim_length = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    A1_2 = A0_2._last_send_comment_id
  end
  L2_2 = 1
  L3_2 = A0_2._all_type_comment_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._all_type_comment_table
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.Content
    L6_2 = L6_2.ID
    if L6_2 == A1_2 then
      L6_2 = A0_2._all_type_comment_table
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.Type
      L7_2 = L3_1.Main
      if L6_2 == L7_2 then
        L6_2 = A0_2._binder
        L6_2 = L6_2.scroll_view_comment
        L7_2 = L6_2
        L6_2 = L6_2.MovePanelToItemIndex
        L8_2 = L5_2 - 1
        L6_2(L7_2, L8_2)
        L6_2 = A0_2._binder
        L6_2 = L6_2.scroll_view_comment
        L7_2 = L6_2
        L6_2 = L6_2.GetShownItemByItemIndex
        L8_2 = L5_2 - 1
        L6_2 = L6_2(L7_2, L8_2)
        L7_2 = L6_2.UserObjectData
        L8_2 = L7_2
        L7_2 = L7_2.play_new_anim
        L7_2(L8_2)
      else
        L6_2 = A0_2._all_type_comment_table
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.Type
        L7_2 = L3_1.Sub
        if L6_2 == L7_2 then
          L6_2 = A0_2._binder
          L6_2 = L6_2.scroll_view_comment
          L7_2 = L6_2
          L6_2 = L6_2.MovePanelToItemIndex
          L8_2 = L5_2 - 2
          L6_2(L7_2, L8_2)
          L6_2 = A0_2._binder
          L6_2 = L6_2.scroll_view_comment
          L7_2 = L6_2
          L6_2 = L6_2.GetShownItemByItemIndex
          L8_2 = L5_2 - 1
          L6_2 = L6_2(L7_2, L8_2)
          L7_2 = L6_2.UserObjectData
          L8_2 = L7_2
          L7_2 = L7_2.play_new_anim
          L9_2 = A0_2._last_reply_target_comment
          L7_2(L8_2, L9_2)
        end
      end
      A0_2._last_reply_target_comment = nil
      A0_2._last_send_comment_id = nil
      return
    end
  end
end
L0_1.locate_target_comment = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._reply_btn_table = L1_2
  L1_2 = 1
  L2_2 = A0_2._all_type_comment_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._all_type_comment_table
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.Type
    L6_2 = L3_1.PostInfo
    if L5_2 ~= L6_2 then
      L5_2 = A0_2._all_type_comment_table
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.Content
      L7_2 = L5_2
      L6_2 = L5_2.CheckIsCanReply
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = A0_2._binder
        L6_2 = L6_2.scroll_view_comment
        L7_2 = L6_2
        L6_2 = L6_2.GetShownItemByItemIndex
        L8_2 = L4_2 - 1
        L6_2 = L6_2(L7_2, L8_2)
        if L6_2 then
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = A0_2._reply_btn_table
          L9_2 = L6_2.UserObjectData
          L9_2 = L9_2._binder
          L9_2 = L9_2.btn_reply
          L7_2(L8_2, L9_2)
        end
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._reply_btn_table
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.set_all_reply_btn_nav = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._post = A1_2
  L2_2 = A0_2._last_reply_target_comment
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._insert_sub_comment_under_main_comment
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._generate_comment
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_comment
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterFrames
  L3_2 = 1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._locate_can_reply_comment
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_all_reply_btn_nav
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_mission_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_reply_panel
  L2_2(L3_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._all_type_comment_table = L1_2
  L1_2 = {}
  L2_2 = L3_1.PostInfo
  L1_2.Type = L2_2
  L2_2 = A0_2._post
  L1_2.Content = L2_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._all_type_comment_table
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_dict
  L3_2 = A0_2._post
  L3_2 = L3_2.CommentDataDict
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSUtils
  L3_2 = L3_2.sort_comment_table
  L4_2 = L2_2
  L5_2 = true
  L6_2 = A0_2._post
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = {}
    L8_2 = L3_1.Main
    L7_2.Type = L8_2
    L8_2 = L2_2[L6_2]
    L7_2.Content = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._all_type_comment_table
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2._generate_sub_comment
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._generate_comment = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_dict
  L3_2 = A1_2.Content
  L3_2 = L3_2.SubCommentDataDict
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSUtils
  L3_2 = L3_2.sort_comment_table
  L4_2 = L2_2
  L5_2 = true
  L6_2 = A0_2._post
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = {}
    L8_2 = L3_1.Sub
    L7_2.Type = L8_2
    L8_2 = L2_2[L6_2]
    L7_2.Content = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._all_type_comment_table
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2._generate_sub_comment
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._generate_sub_comment = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 1
  L2_2 = A0_2._all_type_comment_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._all_type_comment_table
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.Type
    L6_2 = L3_1.PostInfo
    if L5_2 ~= L6_2 then
      L5_2 = A0_2._all_type_comment_table
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.Content
      L5_2 = L5_2.ID
      L6_2 = A0_2._last_reply_target_comment
      L6_2 = L6_2.ID
      if L5_2 == L6_2 then
        L5_2 = A0_2._last_reply_target_comment
        L5_2 = L5_2.SubCommentDataDict
        L6_2 = L5_2
        L5_2 = L5_2.TryGetValue
        L7_2 = A0_2._last_send_comment_id
        L5_2, L6_2 = L5_2(L6_2, L7_2)
        L7_2 = {}
        L8_2 = L3_1.Sub
        L7_2.Type = L8_2
        L7_2.Content = L6_2
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = A0_2._all_type_comment_table
        L10_2 = L4_2 + 1
        L11_2 = L7_2
        L8_2(L9_2, L10_2, L11_2)
        return
      end
    end
  end
end
L0_1._insert_sub_comment_under_main_comment = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_comment
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._all_type_comment_table
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_comment
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_comment = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._all_type_comment_table
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.Type
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L6_2 = A0_2._all_type_comment_table
    L7_2 = A2_2 + 1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.Type
    L7_2 = L3_1.Main
    if L6_2 == L7_2 then
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.HeliobusSNSDetailCommentMainItem
      L9_2 = G
      L9_2 = L9_2.HeliobusSNSDetailCommentMainItemBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
      L7_2 = L5_2
      L6_2 = L5_2.register_on_select_callback
      L8_2 = A0_2._on_comment_select
      L9_2 = A0_2
      L6_2(L7_2, L8_2, L9_2)
      L7_2 = L5_2
      L6_2 = L5_2.register_click_callback
      L8_2 = A0_2._on_click_main_item
      L9_2 = A0_2
      L6_2(L7_2, L8_2, L9_2)
    else
      L6_2 = A0_2._all_type_comment_table
      L7_2 = A2_2 + 1
      L6_2 = L6_2[L7_2]
      L6_2 = L6_2.Type
      L7_2 = L3_1.Sub
      if L6_2 == L7_2 then
        L7_2 = A0_2
        L6_2 = A0_2.create_panel
        L8_2 = G
        L8_2 = L8_2.HeliobusSNSDetailCommentSubItem
        L9_2 = G
        L9_2 = L9_2.HeliobusSNSDetailCommentSubItemBinder
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        L5_2 = L6_2
        L7_2 = L5_2
        L6_2 = L5_2.register_click_callback
        L8_2 = A0_2._on_click_sub_item
        L9_2 = A0_2
        L6_2(L7_2, L8_2, L9_2)
      else
        L6_2 = A0_2._all_type_comment_table
        L7_2 = A2_2 + 1
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.Type
        L7_2 = L3_1.PostInfo
        if L6_2 == L7_2 then
          L7_2 = A0_2
          L6_2 = A0_2.create_panel
          L8_2 = G
          L8_2 = L8_2.HeliobusSNSDetailPostInfoItem
          L9_2 = G
          L9_2 = L9_2.HeliobusSNSDetailPostInfoItemBinder
          L6_2 = L6_2(L7_2, L8_2, L9_2)
          L5_2 = L6_2
          L7_2 = L5_2
          L6_2 = L5_2.register_click_expand_callback
          L8_2 = A0_2._on_click_post_item_expand
          L9_2 = A0_2
          L6_2(L7_2, L8_2, L9_2)
        end
      end
    end
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = A0_2._all_type_comment_table
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L9_2 = A2_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._all_type_comment_table
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.Type
  L7_2 = L3_1.Main
  if L6_2 == L7_2 then
    L7_2 = L5_2
    L6_2 = L5_2.display_top_line
    L8_2 = A2_2 ~= 1
    L6_2(L7_2, L8_2)
  end
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L5_2._binder
  L7_2 = L7_2.root
  L6_2(L7_2)
  return L4_2
end
L0_1._on_scroll_view_comment_change = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._reply_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_last_nav_btn
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_view_comment
  L2_2 = L2_2.ScrollRect
  L3_2 = L2_2
  L2_2 = L2_2.ScrollToTransform
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterFrames
  L3_2 = 1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.set_all_reply_btn_nav
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1._on_comment_select = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._all_type_comment_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._all_type_comment_table
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.Type
    L6_2 = L3_1.PostInfo
    if L5_2 ~= L6_2 then
      L5_2 = A0_2._all_type_comment_table
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.Content
      L7_2 = L5_2
      L6_2 = L5_2.CheckIsCanReply
      L6_2 = L6_2(L7_2)
      if L6_2 then
        L6_2 = A0_2._binder
        L6_2 = L6_2.scroll_view_comment
        L7_2 = L6_2
        L6_2 = L6_2.MovePanelToItemIndex
        L8_2 = L4_2 - 1
        L6_2(L7_2, L8_2)
        A0_2._cur_selected_index = L4_2
        break
      end
    end
  end
end
L0_1._locate_can_reply_comment = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._post
  L1_2 = L1_2.PostType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusPostType
  L2_2 = L2_2.Tattle
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._post
    L1_2 = L1_2.IsMyPost
    if not L1_2 then
      goto lbl_20
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  goto lbl_57
  ::lbl_20::
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMainMissionData
  L3_2 = A0_2._post
  L3_2 = L3_2.Row
  L3_2 = L3_2.PostTypeParameter
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "HeliobusSNSDetailCommentPanel _setup_mission_panel() : \228\184\141\229\173\152\229\156\168MissionId\228\184\186("
    L4_2 = A0_2._post
    L4_2 = L4_2.Row
    L4_2 = L4_2.PostTypeParameter
    L5_2 = ")\231\154\132Post\228\187\187\229\138\161"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_mission
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mission
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.IsFinish
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.IsFinish
  if not L2_2 then
    L2_2 = A0_2._mission_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._post
    L2_2(L3_2, L4_2)
  end
  ::lbl_57::
end
L0_1._setup_mission_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._post
  L1_2 = L1_2.PostType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeliobusPostType
  L2_2 = L2_2.Tattle
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._post
    L1_2 = L1_2.IsMyPost
    if not L1_2 then
      L1_2 = A0_2._reply_panel
      L2_2 = L1_2
      L1_2 = L1_2.close_all_reply
      L1_2(L2_2)
      return
    end
  end
  L1_2 = A0_2._post
  L2_2 = L1_2
  L1_2 = L1_2.CheckIsCanReply
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2._reply_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._post
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._reply_panel
    L3_2 = L2_2
    L2_2 = L2_2.close_all_reply
    L2_2(L3_2)
  end
end
L0_1._setup_reply_panel = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_view_comment
  L4_2 = L3_2
  L3_2 = L3_2.MovePanelToItemIndex
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_view_comment
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.get_btn
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._reply_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_reply_comment
  L6_2 = A1_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_mission
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._callback
  if L4_2 ~= nil then
    L4_2 = A0_2._callback_self
    if L4_2 ~= nil then
      L4_2 = A0_2._callback
      L5_2 = A0_2._callback_self
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._on_click_main_item = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._callback
  if L2_2 ~= nil then
    L2_2 = A0_2._callback_self
    if L2_2 ~= nil then
      L2_2 = A0_2._callback
      L3_2 = A0_2._callback_self
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_click_sub_item = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view_comment
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._on_click_post_item_expand = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._take_mission_callback
  if L2_2 ~= nil then
    L2_2 = A0_2._take_mission_callback_self
    if L2_2 ~= nil then
      L2_2 = A0_2._take_mission_callback
      L3_2 = A0_2._take_mission_callback_self
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_click_take_mission = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._go_to_mission_callback
  if L2_2 ~= nil then
    L2_2 = A0_2._go_to_mission_callback_self
    if L2_2 ~= nil then
      L2_2 = A0_2._go_to_mission_callback
      L3_2 = A0_2._go_to_mission_callback_self
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_click_go_to_mission = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_trans_comment
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.x
  A0_2._target_x = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_trans_comment
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.z
  A0_2._target_z = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_trans_comment
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.y
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_trans_option
  L3_2 = L3_2.rect
  L3_2 = L3_2.height
  L2_2 = L2_2 + L3_2
  A0_2._target_y = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_trans_comment
  L2_2 = L2_2.rect
  L2_2 = L2_2.height
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_trans_reply_panel
  L3_2 = L3_2.rect
  L3_2 = L3_2.height
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_trans_option
  L3_2 = L3_2.rect
  L3_2 = L3_2.height
  L2_2 = L2_2 + L3_2
  L2_2 = L2_2 - 70
  L3_2 = A0_2._target_y
  if L2_2 >= L3_2 then
    L3_2 = A0_2._target_y
    if L3_2 then
      goto lbl_46
    end
  end
  L3_2 = L2_2
  ::lbl_46::
  A0_2._target_y = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._add_tick
  L3_2(L4_2)
end
L0_1._on_open_reply = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_mission_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_all_reply_btn_nav
  L2_2(L3_2)
  if A1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_trans_comment
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.x
  A0_2._target_x = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_trans_comment
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.z
  A0_2._target_z = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_trans_comment
  L2_2 = L2_2.localPosition
  L2_2 = L2_2.y
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_trans_option
  L3_2 = L3_2.rect
  L3_2 = L3_2.height
  L2_2 = L2_2 - L3_2
  A0_2._target_y = L2_2
  L2_2 = A0_2._target_y
  if 0 < L2_2 then
    L2_2 = A0_2._target_y
    if L2_2 then
      goto lbl_35
    end
  end
  L2_2 = 0
  ::lbl_35::
  A0_2._target_y = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._add_tick
  L2_2(L3_2)
end
L0_1._on_close_reply = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector3
  L2_2 = A0_2._target_x
  L3_2 = A0_2._target_y
  L4_2 = A0_2._target_z
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._pos_final = L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector3
  L1_2 = L1_2.zero
  A0_2._pos_setting_velocity = L1_2
  L1_2 = A0_2._mono_ticker
  L2_2 = L1_2
  L1_2 = L1_2.SetTickCallback
  L3_2 = A0_2._mono_tick
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_move_force_end
  L4_2 = L6_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._add_tick = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector3
  L1_2 = L1_2.Distance
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_trans_comment
  L2_2 = L2_2.localPosition
  L3_2 = A0_2._pos_final
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 <= 5 then
    L2_2 = A0_2._mono_ticker
    L3_2 = L2_2
    L2_2 = L2_2.ClearTickCallback
    L4_2 = A0_2._mono_tick
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Vector3
    L2_2 = L2_2.zero
    A0_2._pos_setting_velocity = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.rect_trans_comment
    L3_2 = A0_2._pos_final
    L2_2.localPosition = L3_2
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_trans_comment
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector3
  L3_2 = L3_2.SmoothDamp
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_trans_comment
  L4_2 = L4_2.localPosition
  L5_2 = A0_2._pos_final
  L6_2 = A0_2._pos_setting_velocity
  L7_2 = L4_1
  L8_2 = L5_1
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2.localPosition = L3_2
end
L0_1._mono_tick = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._mono_ticker
  L2_2 = L1_2
  L1_2 = L1_2.ClearTickCallback
  L3_2 = A0_2._mono_tick
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector3
  L1_2 = L1_2.zero
  A0_2._pos_setting_velocity = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rect_trans_comment
  L2_2 = A0_2._pos_final
  L1_2.localPosition = L2_2
end
L0_1._on_move_force_end = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._reply_callback
  if L2_2 ~= nil then
    L2_2 = A0_2._reply_callback_self
    if L2_2 ~= nil then
      L2_2 = A0_2._reply_callback
      L3_2 = A0_2._reply_callback_self
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      A0_2._last_send_comment_id = A1_2
    end
  end
end
L0_1._on_click_reply = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._reply_comment_callback
  if L3_2 ~= nil then
    L3_2 = A0_2._reply_comment_callback_self
    if L3_2 ~= nil then
      L3_2 = A0_2._reply_comment_callback
      L4_2 = A0_2._reply_comment_callback_self
      L5_2 = A1_2
      L6_2 = A2_2
      L3_2(L4_2, L5_2, L6_2)
      A0_2._last_reply_target_comment = A2_2
      A0_2._last_send_comment_id = A1_2
    end
  end
end
L0_1._on_click_comment_reply = L7_1
return L0_1
