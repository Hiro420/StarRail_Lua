local L0_1, L1_1, L2_1
L0_1 = "UIText_Retcode_Common"
L1_1 = {}
RspErrorShower = L1_1
L1_1 = RspErrorShower
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = G
  L0_2 = L0_2.NotifyManager
  L0_2 = L0_2.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIShowRspError
  L3_2 = L1_1._on_ui_show_rsp_error
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = G
  L0_2 = L0_2.NotifyManager
  L0_2 = L0_2.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIShowRspErrorWithArg
  L3_2 = L1_1._on_ui_show_rsp_error_with_arg
  L0_2(L1_2, L2_2, L3_2)
end
L1_1.ctor = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = G
  L0_2 = L0_2.NotifyManager
  L0_2 = L0_2.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIShowRspError
  L3_2 = L1_1._on_ui_show_rsp_error
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = G
  L0_2 = L0_2.NotifyManager
  L0_2 = L0_2.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIShowRspErrorWithArg
  L3_2 = L1_1._on_ui_show_rsp_error_with_arg
  L0_2(L1_2, L2_2, L3_2)
end
L1_1.dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.show_rsp_error
  L2_2 = A0_2
  L1_2(L2_2)
end
L1_1._on_ui_show_rsp_error = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RetCodeErrorConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.IsPileToastCenter
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UICenterToastMessageTextID
      L4_2 = L1_2.Text
      L2_2(L3_2, L4_2)
    else
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIPileToastMessageTextID
      L4_2 = L1_2.Text
      L2_2(L3_2, L4_2)
    end
    return
  end
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = L0_1
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPileToastMessageString
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1.show_rsp_error = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2[0]
  L2_2 = A0_2[1]
  L3_2 = nil
  if L1_2 == 1312 then
    L4_2 = L2_2[0]
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ItemExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L5_2.ItemName
    L6_2 = L6_2(L7_2)
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = "RetCodeError_1312"
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L3_2 = L7_2
  end
  if L3_2 == nil then
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = L0_1
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.UICenterToastMessageString
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L1_1._on_ui_show_rsp_error_with_arg = L2_1
return L1_1
