local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MessageItemLinkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.Row
  L2_2 = L2_2.ItemContentID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MessageLinkExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img
  L7_2 = L3_2.ImagePath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.Title
  L4_2(L5_2, L6_2)
  L4_2 = L3_2.OnceOnly
  if L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_ModuleManager
    L4_2 = L4_2.MessageModule
    L5_2 = L4_2
    L4_2 = L4_2.IsItemFinished
    L6_2 = A1_2.ID
    L4_2 = L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_closed
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_go
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.canvas_closed
  if L4_2 then
    L6_2 = 0.6
    if L6_2 then
      goto lbl_50
    end
  end
  L6_2 = 1
  ::lbl_50::
  L5_2.alpha = L6_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_go
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  if L4_2 then
    L7_2 = "UIText_PhoneMessage_ItemLink_Toast_Expired"
    if L7_2 then
      goto lbl_60
    end
  end
  L7_2 = "UIText_PhoneMessage_ItemLink_ClickHint"
  ::lbl_60::
  L5_2(L6_2, L7_2)
end
L0_1.setup_view = L1_1
return L0_1
