local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogBuffListBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogBuffRow"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDialogBuffList"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ScrollRectPanel
  L1_2 = L1_2(L2_2)
  A0_2._scroll_buff_list = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._scroll_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.bind_view
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_buff_list
  L3_2 = L3_2.transform
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._BuffDatas = nil
  A0_2._CurrentEntity = nil
  A0_2._Ability = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._CurrentEntity = A1_2
  L2_2 = A0_2._CurrentEntity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.TurnBasedAbilityComponent
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._Ability = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._Ability
  L2_2 = L1_2
  L1_2 = L1_2.GetModifierCount
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  A0_2._BuffDatas = L2_2
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._Ability
    L7_2 = L6_2
    L6_2 = L6_2.GetModifierByIndex
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.StatusExcelTable
      L7_2 = L7_2.GetByModifierName
      L8_2 = L6_2.KeyForStatusConfig
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = A0_2._BuffDatas
        L10_2 = A0_2._BuffDatas
        L10_2 = #L10_2
        L10_2 = L10_2 + 1
        L11_2 = L6_2
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
end
L0_1._refresh_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._scroll_buff_list
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._scroll_buff_list
  L2_2 = L1_2
  L1_2 = L1_2.SetupView
  L3_2 = A0_2
  L4_2 = A0_2._on_scroll_buff_change
  L5_2 = nil
  L6_2 = A0_2._BuffDatas
  L6_2 = #L6_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._BuffDatas
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = L2_1.SafeSetTextID
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_status
    L3_2 = "UIText_AvatarDialog_BuffState"
    L1_2(L2_2, L3_2)
    L1_2 = L1_1.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_status
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = L1_1.SafeSetActive
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_status
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2.UICodeObject
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.AvatarDialogBuffRow
    L7_2 = G
    L7_2 = L7_2.AvatarDialogBuffRowBinder
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
    L5_2 = L3_2
    L4_2 = L3_2.bind
    L6_2 = A1_2.ItemTrans
    L4_2(L5_2, L6_2)
    A1_2.UICodeObject = L3_2
  end
  L5_2 = L3_2
  L4_2 = L3_2.setup_view
  L6_2 = A0_2._BuffDatas
  L7_2 = A1_2.Index
  L7_2 = L7_2 + 1
  L6_2 = L6_2[L7_2]
  L4_2(L5_2, L6_2)
end
L0_1._on_scroll_buff_change = L3_1
return L0_1
