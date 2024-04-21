local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.SNSPost.HeliobusSNSPostPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusSNSPostPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeliobusSNSPostPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetSPPostDataCanSend
  L1_2 = L1_2(L2_2)
  A0_2._post_row = L1_2
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._post_send_callback = A1_2
  A0_2._post_send_callback_self = A2_2
end
L0_1.register_post_send_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._template_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_click_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Heliobus.SNS.SNSPost.HeliobusSNSPostTemplateItem"
  L6_2 = "Ui.Heliobus.SNS.SNSPost.HeliobusSNSPostTemplateItemBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._template_list_panel = L1_2
  L1_2 = A0_2._template_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_templates
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._template_table = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._post_row
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "HeliobusSNSPostPage : \229\189\147\229\137\141\228\184\141\229\173\152\229\156\168\229\143\175\229\143\145\233\128\129\231\154\132\230\142\168\230\150\135"
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_post_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = false
  L2_2 = 0
  L3_2 = A0_2._post_row
  L3_2 = L3_2.TemplateIDList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._post_row
    L6_2 = L6_2.TemplateIDList
    L6_2 = L6_2[L5_2]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.HeliobusTemplateExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 == nil then
      L8_2 = G
      L8_2 = L8_2.SuperDebug
      L8_2 = L8_2.LogErrorFormat
      L9_2 = "HeliobusSNSPostPage : \228\184\141\229\173\152\229\156\168ID\228\184\186("
      L10_2 = L6_2
      L11_2 = ")\231\154\132\230\168\161\230\157\191"
      L9_2 = L9_2 .. L10_2 .. L11_2
      L8_2(L9_2)
      L1_2 = true
    else
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._template_table
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  if L1_2 then
    return
  end
  L2_2 = A0_2._template_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._template_table
  L5_2 = A0_2._on_click_template
  L6_2 = A0_2
  L7_2 = NavigationType
  L7_2 = L7_2.Horizontal
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_post_list = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Heliobus.SNS.SNSPost.SNSPostDetail.HeliobusSNSPostDetailPage"
  L4_2 = A0_2._post_row
  L4_2 = L4_2.HeliobusSpecialPostID
  L5_2 = A0_2._template_table
  L6_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = L2_2.LuaTable
  L4_2 = L3_2
  L3_2 = L3_2.register_post_send_callback
  L5_2 = A0_2._on_post_send
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._on_click_template = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._is_post_send = true
end
L0_1._on_post_send = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_close = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_post_send
  if L1_2 then
    L1_2 = A0_2._post_send_callback
    if L1_2 ~= nil then
      L1_2 = A0_2._post_send_callback_self
      if L1_2 ~= nil then
        L1_2 = A0_2._post_send_callback
        L2_2 = A0_2._post_send_callback_self
        L1_2(L2_2)
      end
    end
  end
end
L0_1._on_unload = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
return L0_1
