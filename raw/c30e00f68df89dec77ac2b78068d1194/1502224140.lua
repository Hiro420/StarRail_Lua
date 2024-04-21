local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Buff.Components.ActivityMonopolyBuffItemDisplayPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Buff.ActivityMonopolyBuffDisplayDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyBuffDisplayDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyBuffDisplayDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._permanent_buff_datas = L1_2
  L1_2 = {}
  A0_2._buff_datas = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MonopolyModule
  L1_2 = L1_2.BuffInfo
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._permanent_buff_datas
  L4_2 = L1_2.EmptyPermanentBuff
  L2_2(L3_2, L4_2)
  L2_2 = 0
  L3_2 = L1_2.ActivatedBuff
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2.ActivatedBuff
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2.IsPermanent
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._permanent_buff_datas
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    else
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._buff_datas
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.empty_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_info
  L4_2 = A0_2._on_btn_info
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_display_count
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.empty_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 == 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._buff_datas
  L1_2 = #L1_2
  L1_2 = L1_2 + 1
  return L1_2
end
L0_1._get_display_count = L1_1
function L1_1(A0_2, A1_2, A2_2)
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
  L7_2 = L7_2.ActivityMonopolyBuffItemDisplayPanel
  L8_2 = G
  L8_2 = L8_2.ActivityMonopolyBuffItemDisplayPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  if A2_2 == 0 then
    L6_2 = L4_2
    L5_2 = L4_2.setup_merge_view
    L7_2 = A0_2._permanent_buff_datas
    L5_2(L6_2, L7_2)
  else
    L6_2 = L4_2
    L5_2 = L4_2.setup_view
    L7_2 = A0_2._buff_datas
    L7_2 = L7_2[A2_2]
    L5_2(L6_2, L7_2)
  end
  return L3_2
end
L0_1._on_item_changed = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "Monopoly_Activity_Buff_InfoValue"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  L2_2 = {}
  if L1_2 ~= nil then
    L3_2 = 0
    L4_2 = L1_2.Length
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L1_2[L6_2]
      L7_2 = L7_2.UintValue
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = "InfoText_Monopoly_Raffle_Title"
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = "UIText_ActivityMonopoly_Buff_Info"
  L6_2 = table
  L6_2 = L6_2.unpack
  L7_2 = L2_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.show_introduce_with_text
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1._on_btn_info = L1_1
return L0_1
