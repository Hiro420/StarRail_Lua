local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Rule.ChessRogueRuleDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Rule.ChessRogueRuleGroupTitlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Rule.ChessRogueRuleGroupTitlePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Rule.ChessRogueBlockIntroPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Rule.ChessRogueBlockIntroPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueRuleDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_RogueDLC_BlockIcon_Intro"
L2_1 = "UIText_RogueDLC_BlockIcon_Group1"
L3_1 = "UIText_RogueDLC_BlockIcon_Group2"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueRuleDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Scroll"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_looplist_view
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._block_intro_row_table = L1_2
  L1_2 = {}
  A0_2._mark_intro_row_table = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurSubMode
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueDLCBlockIntroExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = L3_2.IntroGroup
    L5_2 = A0_2._check_sub_mode
    L6_2 = L3_2
    L7_2 = L1_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      if L4_2 == 1 then
        L5_2 = table
        L5_2 = L5_2.insert
        L6_2 = A0_2._block_intro_row_table
        L7_2 = A0_2._block_intro_row_table
        L7_2 = #L7_2
        L7_2 = L7_2 + 1
        L8_2 = L3_2
        L5_2(L6_2, L7_2, L8_2)
      elseif L4_2 == 2 then
        L5_2 = table
        L5_2 = L5_2.insert
        L6_2 = A0_2._mark_intro_row_table
        L7_2 = A0_2._mark_intro_row_table
        L7_2 = #L7_2
        L7_2 = L7_2 + 1
        L8_2 = L3_2
        L5_2(L6_2, L7_2, L8_2)
      end
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2._block_intro_row_table
  L5_2 = A0_2._compare_block_intro_row
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2._mark_intro_row_table
  L5_2 = A0_2._compare_block_intro_row
  L3_2(L4_2, L5_2)
end
L0_1._init_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.ndoe_content
  L1_2(L2_2)
  L1_2 = A0_2._block_intro_row_table
  L1_2 = #L1_2
  L2_2 = A0_2._mark_intro_row_table
  L2_2 = #L2_2
  L1_2 = L1_2 + L2_2
  L1_2 = L1_2 + 2
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = L1_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._setup_looplist_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = 0
  if A2_2 == 0 then
    L3_2 = 0
  else
    L4_2 = A0_2._block_intro_row_table
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    if A2_2 == L4_2 then
      L3_2 = 0
    else
      L3_2 = 2
    end
  end
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    if L3_2 == 0 then
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.ChessRogueRuleGroupTitlePanel
      L9_2 = G
      L9_2 = L9_2.ChessRogueRuleGroupTitlePanelBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    else
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.ChessRogueBlockIntroPanel
      L9_2 = G
      L9_2 = L9_2.ChessRogueBlockIntroPanelBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    end
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  if A2_2 == 0 then
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = L2_1
    L6_2(L7_2, L8_2)
  else
    L6_2 = A0_2._block_intro_row_table
    L6_2 = #L6_2
    L6_2 = L6_2 + 1
    if A2_2 == L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.setup_view
      L8_2 = L3_1
      L6_2(L7_2, L8_2)
    else
      L6_2 = A0_2._block_intro_row_table
      L6_2 = #L6_2
      L6_2 = L6_2 + 1
      if A2_2 < L6_2 then
        L7_2 = L5_2
        L6_2 = L5_2.setup_view
        L8_2 = A0_2._block_intro_row_table
        L8_2 = L8_2[A2_2]
        L6_2(L7_2, L8_2)
      else
        L7_2 = L5_2
        L6_2 = L5_2.setup_view
        L8_2 = A0_2._mark_intro_row_table
        L9_2 = A0_2._block_intro_row_table
        L9_2 = #L9_2
        L9_2 = A2_2 - L9_2
        L9_2 = L9_2 - 1
        L8_2 = L8_2[L9_2]
        L6_2(L7_2, L8_2)
      end
    end
  end
  return L4_2
end
L0_1._on_item_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.Sort
  L3_2 = A1_2.Sort
  L2_2 = L2_2 < L3_2
  return L2_2
end
L0_1._compare_block_intro_row = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.SubType
  if L2_2 ~= nil then
    L2_2 = A0_2.SubType
    L2_2 = L2_2.Length
    if L2_2 ~= 0 then
      goto lbl_10
    end
  end
  L2_2 = true
  do return L2_2 end
  ::lbl_10::
  L2_2 = 0
  L3_2 = A0_2.SubType
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.SubType
    L6_2 = L6_2[L5_2]
    if L6_2 == A1_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._check_sub_mode = L4_1
return L0_1
