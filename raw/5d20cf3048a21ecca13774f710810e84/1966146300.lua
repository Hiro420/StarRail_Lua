local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GotoGamePageCommand"
L2_1 = "Logic.Goto.BaseCommand"
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.FeatureSwitchModule
L3_1 = "UIText_Assist_Toast_FarmElement_Ban"
L0_1._text_already_open = "UIText_Goto_Error_01"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A1_2.GotoType
  L4_2 = L0_1.super
  L4_2 = L4_2.get_params
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = L0_1.super
  L5_2 = L5_2.get_page_name_from_full_path_name
  L6_2 = GotoType2Page
  L6_2 = L6_2[L3_2]
  L5_2 = L5_2(L6_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.GotoType
  L6_2 = L6_2.Inventory
  L6_2 = #L6_2
  if L3_2 == L6_2 then
    L7_2 = A0_2
    L6_2 = A0_2._goto_inventory_page
    L8_2 = A1_2
    L9_2 = A2_2
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  if A2_2 then
    L6_2 = #A2_2
    if 0 < L6_2 then
      L6_2 = G
      L6_2 = L6_2.UIManager
      L6_2 = L6_2.load_and_async_show
      L7_2 = GotoType2Page
      L7_2 = L7_2[L3_2]
      L8_2 = unpack
      L9_2 = A2_2
      L8_2, L9_2 = L8_2(L9_2)
      L6_2(L7_2, L8_2, L9_2)
  end
  else
    L6_2 = #L4_2
    if 0 < L6_2 then
      L6_2 = G
      L6_2 = L6_2.UIManager
      L6_2 = L6_2.load_and_async_show
      L7_2 = GotoType2Page
      L7_2 = L7_2[L3_2]
      L8_2 = unpack
      L9_2 = L4_2
      L8_2, L9_2 = L8_2(L9_2)
      L6_2(L7_2, L8_2, L9_2)
    else
      L6_2 = G
      L6_2 = L6_2.UIManager
      L6_2 = L6_2.load_and_async_show
      L7_2 = GotoType2Page
      L7_2 = L7_2[L3_2]
      L6_2(L7_2)
    end
  end
end
L0_1.execute = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A1_2.GotoType
  L4_2 = GotoType2Page
  L4_2 = L4_2[L3_2]
  if L4_2 ~= nil then
    L4_2 = GotoType2Page
    L4_2 = L4_2[L3_2]
    if L4_2 ~= "" then
      goto lbl_19
    end
  end
  L4_2 = G
  L4_2 = L4_2.SuperDebug
  L4_2 = L4_2.LogErrorFormat
  L5_2 = "The Page associated with type %d does not exist!"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = false
  L5_2 = ""
  do return L4_2, L5_2 end
  ::lbl_19::
  L5_2 = A0_2
  L4_2 = A0_2._check_feature_open_with_hint
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = false
    L5_2 = ""
    return L4_2, L5_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GotoType
  L4_2 = L4_2.TeamEdit
  L4_2 = #L4_2
  if L3_2 ~= L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.GotoType
    L4_2 = L4_2.MobilePhone
    L4_2 = #L4_2
    if L3_2 ~= L4_2 then
      goto lbl_95
    end
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_GamePhaseManager
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentPhase
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 or L5_2
  if L4_2 then
    L5_2 = L4_2.TeamManager
    if L5_2 then
      L5_2 = L4_2.TeamManager
      L5_2 = L5_2.CurrentTeamLeader
    end
  end
  L6_2 = L5_2 or L6_2
  if L5_2 then
    L7_2 = L5_2
    L6_2 = L5_2.GetComponent
    L8_2 = typeof
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.CharacterAnimZone
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  L7_2 = L4_2 or L7_2
  if L4_2 then
    L7_2 = L4_2.AdvWaitingChangeLeader
  end
  if L6_2 then
    L9_2 = L6_2
    L8_2 = L6_2.IsInAnimZone
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.AnimZoneType
    L10_2 = L10_2.ForbidTeamEdit
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      goto lbl_92
    end
    L9_2 = L6_2
    L8_2 = L6_2.IsInAnimZone
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.AnimZoneType
    L10_2 = L10_2.ForbidOffStage
    L8_2 = L8_2(L9_2, L10_2)
  end
  ::lbl_92::
  if L8_2 or L7_2 then
    L8_2 = false
    L9_2 = ""
    return L8_2, L9_2
  end
  ::lbl_95::
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GotoType
  L4_2 = L4_2.ChessRogueCabinet
  L4_2 = #L4_2
  if L3_2 == L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.AdventureStatic
    L5_2 = L4_2
    L4_2 = L4_2.GetCurrentGameModeType
    L4_2 = L4_2(L5_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.GameModeType
    L5_2 = L5_2.ChessRogue
    if L4_2 == L5_2 then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.RogueSubMode
      L5_2 = L5_2.ChessRogueNous
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.Client
      L6_2 = L6_2.GlobalVars
      L6_2 = L6_2.s_ModuleManager
      L6_2 = L6_2.ChessRogueModule
      L7_2 = L6_2
      L6_2 = L6_2.GetCurSubMode
      L6_2 = L6_2(L7_2)
      if L5_2 == L6_2 then
        L5_2 = false
        L6_2 = ""
        return L5_2, L6_2
      end
    end
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GotoType
  L4_2 = L4_2.TeamEdit
  L4_2 = #L4_2
  if L3_2 == L4_2 then
    L4_2 = L1_1.HaveAssist
    if L4_2 then
      L4_2 = false
      L5_2 = L3_1
      return L4_2, L5_2
    end
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GotoType
  L4_2 = L4_2.Inventory
  L4_2 = #L4_2
  if L3_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._check_goto_inventory_condition
    L6_2 = A1_2
    L7_2 = A2_2
    return L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = true
  L5_2 = ""
  return L4_2, L5_2
end
L0_1._check_goto_condition = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.GotoType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GotoType
  L3_2 = L3_2.Mail
  L3_2 = #L3_2
  if L2_2 == L3_2 then
    L2_2 = L2_1
    L3_2 = L2_2
    L2_2 = L2_2.IsFeatureClosed
    L4_2 = CS
    L4_2 = L4_2.KJMOMPDBPKH
    L4_2 = L4_2.FBENPNFPFEE
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.ConfirmDialogUtil
      L2_2 = L2_2.ShowOkHint
      L3_2 = "UIText_Toast_System_Off_Tips_1"
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.TextID
      L4_2 = L4_2.empty
      L2_2(L3_2, L4_2)
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1._check_feature_open_with_hint = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A2_2 == nil then
    L3_2 = L0_1.super
    L3_2 = L3_2.get_params
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    A2_2 = L3_2
  end
  L3_2 = A2_2[3]
  if L3_2 == nil or L3_2 == 0 then
    L4_2 = true
    L5_2 = ""
    return L4_2, L5_2
  end
  L4_2 = A2_2[2]
  if L4_2 == nil or L4_2 == 0 then
    L6_2 = A0_2
    L5_2 = A0_2._get_inventory_tab_id
    L7_2 = L3_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  end
  if L4_2 == 0 then
    L5_2 = false
    L6_2 = "UIText_Inventory_Goto_Error_Toast_NotFoundItem"
    return L5_2, L6_2
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.InventoryModule
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.InventoryTabExcelTable
  L6_2 = L6_2.GetData
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L8_2 = L5_2
  L7_2 = L5_2.GetInventoryTabItems
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = 0
  L9_2 = L7_2.Count
  L9_2 = L9_2 - 1
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L7_2[L11_2]
    L12_2 = L12_2.ConfigID
    if L12_2 == L3_2 then
      L12_2 = true
      L13_2 = ""
      return L12_2, L13_2
    end
  end
  L8_2 = false
  L9_2 = "UIText_Inventory_Goto_Error_Toast_NotFoundItem"
  return L8_2, L9_2
end
L0_1._check_goto_inventory_condition = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A2_2 == nil then
    L3_2 = L0_1.super
    L3_2 = L3_2.get_params
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    A2_2 = L3_2
  end
  L3_2 = A1_2.GotoType
  L4_2 = A2_2[3]
  if L4_2 == nil or L4_2 == 0 then
    L5_2 = A2_2[2]
    if L5_2 == nil or L5_2 == 0 then
      L6_2 = G
      L6_2 = L6_2.UIManager
      L6_2 = L6_2.load_and_async_show
      L7_2 = GotoType2Page
      L7_2 = L7_2[L3_2]
      L6_2(L7_2)
    else
      L6_2 = G
      L6_2 = L6_2.UIManager
      L6_2 = L6_2.load_and_async_show
      L7_2 = GotoType2Page
      L7_2 = L7_2[L3_2]
      L8_2 = A2_2[1]
      L9_2 = L5_2
      L6_2(L7_2, L8_2, L9_2)
    end
    return
  end
  L5_2 = A2_2[2]
  if L5_2 == nil or L5_2 == 0 then
    L7_2 = A0_2
    L6_2 = A0_2._get_inventory_tab_id
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  end
  L6_2 = G
  L6_2 = L6_2.UIManager
  L6_2 = L6_2.load_and_async_show
  L7_2 = GotoType2Page
  L7_2 = L7_2[L3_2]
  L8_2 = A2_2[1]
  L9_2 = L5_2
  L10_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L0_1._goto_inventory_page = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.InventoryModule
  L3_2 = L2_2
  L2_2 = L2_2.FindTabIDByItemID
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1._get_inventory_tab_id = L4_1
return L0_1
