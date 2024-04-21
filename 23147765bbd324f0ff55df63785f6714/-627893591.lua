local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.MazeBuffSelect.MazeSelectBuffDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeBuffSelect.MazeBuffDetailInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeBuffSelect.MazeBuffDetailInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeBuffSelectDialog"
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
  L3_2 = L3_2.MazeSelectBuffDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._block_input = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  A0_2._buff_info_list = L2_2
  L2_2 = 0
  L3_2 = A1_2.BuffList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._buff_info_list
    L8_2 = A1_2.BuffList
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  A0_2._select_index = 1
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L0_1._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_click_buff
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_buff_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._buff_info_list
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_select_buff
  L2_2(L3_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeSelectBuff
  L3_2 = A0_2._buff_info_list
  L4_2 = A0_2._select_index
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = A0_2._buff_info_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._buff_info_list
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.BuffID
    if L6_2 == A1_2 then
      A0_2._select_index = L5_2
      break
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_select_buff
  L2_2(L3_2)
end
L0_1._on_click_buff = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = pairs
  L2_2 = A0_2._buff_info_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_buff_list
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_selected
    L9_2 = A0_2._select_index
    L9_2 = L4_2 == L9_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._show_select_buff = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MazeSelectBuff
  L3_2 = nil
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_close = L1_1
return L0_1
