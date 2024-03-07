local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.GameStartup.DevLogin.ServerSelectRecentItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.DevLogin.ServerSelectRecentItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ServerSelectRecentPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.recent_server_listview
  L2_2 = L1_2
  L1_2 = L1_2.SelectPreview
  L1_2(L2_2)
end
L0_1.select_prev = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.recent_server_listview
  L2_2 = L1_2
  L1_2 = L1_2.SelectNext
  L1_2(L2_2)
end
L0_1.select_next = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.App
  L1_2 = L1_2.LastServers
  L2_2 = L1_2.Count
  L3_2 = {}
  A0_2._server_list = L3_2
  if 0 < L2_2 then
    L3_2 = 1
    L4_2 = L2_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._server_list
      L9_2 = L6_2 - 1
      L9_2 = L1_2[L9_2]
      L7_2(L8_2, L9_2)
    end
  end
  A0_2._btn_callback = nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.recent_server_listview
  L4_2 = L3_2
  L3_2 = L3_2.SafeInitListView
  L5_2 = 0
  L6_2 = A0_2._get_server_item
  L7_2 = nil
  L8_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.recent_server_listview
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._server_list
  L5_2 = #L5_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.recent_server_listview
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ServerSelectRecentItem
    L8_2 = G
    L8_2 = L8_2.ServerSelectRecentItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._server_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_click_server
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L6_2(L7_2, L8_2)
  L7_2 = A1_2
  L6_2 = A1_2.OnItemSizeChanged
  L8_2 = A2_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._get_server_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.UI
  L4_2 = "_on_click_server "
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_btn_confirm_click
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_click_server = L1_1
function L1_1(A0_2, A1_2)
  A0_2._btn_callback = A1_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.UI
  L4_2 = "_on_btn_confirm_click "
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._btn_callback
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._btn_callback
  L3_2 = A1_2
  L2_2(L3_2)
end
L0_1._on_btn_confirm_click = L1_1
return L0_1
