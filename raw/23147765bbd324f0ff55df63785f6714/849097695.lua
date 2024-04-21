local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.MonsterNewDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.MonsterDialogRecord"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.MonsterDialogRecordBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogHeadRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogHeadRowBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogWeakPoint"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogWeakPointBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.MonsterDialogBuffRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.MonsterDialogBuffRowBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterNewDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MonsterNewDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.UtilEngineWrap
    L2_2 = L2_2.IsCsType
    L3_2 = L1_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BattleGamePhase
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = L1_2.BattleInstanceRef
      if L2_2 ~= nil then
        L2_2 = L1_2.BattleInstanceRef
        L2_2 = L2_2.GameWorldRef
        if L2_2 ~= nil then
          L2_2 = L1_2.BattleInstanceRef
          L2_2 = L2_2.GameWorldRef
          L2_2 = L2_2.TimeScaleStack
          L3_2 = L2_2
          L2_2 = L2_2.PublicPause
          L4_2 = true
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._entityList
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._get_entity_list
    L2_2 = L2_2(L3_2)
    A0_2._entityList = L2_2
  end
  L2_2 = {}
  A0_2._buff = L2_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._btn_exit_onclick
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._btn_exit_onclick
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatars
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = A0_2._entityList
  L3_2 = L3_2.Count
  L4_2 = A0_2._on_scroll_avatars_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._weakPointsCaching
  if L1_2 == nil then
    L1_2 = {}
    A0_2._weakPointsCaching = L1_2
    L1_2 = {}
    A0_2._weakPointsUsing = L1_2
    L1_2 = {}
    A0_2._AllDamageType = L1_2
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.DamageTypeExcelTable
    L1_2 = L1_2.dataDict
    L2_2 = pairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._AllDamageType
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2.instantiate_object
      L9_2 = A0_2._binder
      L9_2 = L9_2.node_weak_point
      L9_2 = L9_2.Prefab
      L10_2 = A0_2._binder
      L10_2 = L10_2.node_weak_point
      L10_2 = L10_2.transform
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.AvatarDialogWeakPoint
      L11_2 = G
      L11_2 = L11_2.AvatarDialogWeakPointBinder
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.bind
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.show_weakpoint
      L11_2 = false
      L9_2(L10_2, L11_2)
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._weakPointsCaching
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.UtilEngineWrap
    L2_2 = L2_2.IsCsType
    L3_2 = L1_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.BattleGamePhase
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = L1_2.BattleInstanceRef
      if L2_2 ~= nil then
        L2_2 = L1_2.BattleInstanceRef
        L2_2 = L2_2.GameWorldRef
        if L2_2 ~= nil then
          L2_2 = L1_2.BattleInstanceRef
          L2_2 = L2_2.GameWorldRef
          L2_2 = L2_2.TimeScaleStack
          L3_2 = L2_2
          L2_2 = L2_2.PublicPause
          L4_2 = false
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
  L2_2 = G
  L2_2 = L2_2.SuperScrollViewUtils
  L2_2 = L2_2.DisposeList
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_avatars
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._unbind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_exit
  L5_2 = A0_2._btn_exit_onclick
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._weakPointsCaching
  if L2_2 then
    L2_2 = A0_2._weakPointsCaching
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = ipairs
      L3_2 = A0_2._weakPointsCaching
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = L6_2._binder
        if L7_2 then
          L7_2 = L6_2._binder
          L7_2 = L7_2.root
          if L7_2 then
            L8_2 = A0_2
            L7_2 = A0_2.destroy_object
            L9_2 = L6_2._binder
            L9_2 = L9_2.root
            L7_2(L8_2, L9_2)
          end
        end
        L8_2 = L6_2
        L7_2 = L6_2.dispose
        L7_2(L8_2)
      end
    end
  end
  L2_2 = A0_2._weakPointsUsing
  if L2_2 then
    L2_2 = A0_2._weakPointsUsing
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = ipairs
      L3_2 = A0_2._weakPointsUsing
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = L6_2._binder
        if L7_2 then
          L7_2 = L6_2._binder
          L7_2 = L7_2.root
          if L7_2 then
            L8_2 = A0_2
            L7_2 = A0_2.destroy_object
            L9_2 = L6_2._binder
            L9_2 = L9_2.root
            L7_2(L8_2, L9_2)
          end
        end
        L8_2 = L6_2
        L7_2 = L6_2.dispose
        L7_2(L8_2)
      end
    end
  end
  A0_2._weakPointsCaching = nil
  A0_2._weakPointsUsing = nil
  L2_2 = A0_2._buff
  if L2_2 then
    L2_2 = A0_2._buff
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = ipairs
      L3_2 = A0_2._buff
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = L6_2._binder
        if L7_2 then
          L7_2 = L6_2._binder
          L7_2 = L7_2.root
          if L7_2 then
            L8_2 = A0_2
            L7_2 = A0_2.destroy_object
            L9_2 = L6_2._binder
            L9_2 = L9_2.root
            L7_2(L8_2, L9_2)
          end
        end
        L8_2 = L6_2
        L7_2 = L6_2.dispose
        L7_2(L8_2)
      end
    end
  end
  A0_2._buff = nil
  A0_2._entity = nil
  A0_2._Ability = nil
  A0_2._characterData = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._entity
  if L1_2 ~= nil then
    L1_2 = A0_2._entity
    L1_2 = L1_2.HasDisposed
    if not L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._characterData
  L1_2 = L1_2.CharacterID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonsterExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UINumberUtils
  L3_2 = L3_2.CharacterLevelInt
  L4_2 = A0_2._Ability
  L3_2 = L3_2(L4_2)
  L4_2 = L2_1.SafeSetText
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_lv
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A0_2._characterData
  L7_2 = L6_2
  L6_2 = L6_2.GetCharacterNameID
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MonsterTemplateExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L2_2.MonsterTemplateID
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.Rank
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.MonsterRank
  L6_2 = L6_2.Elite
  if L5_2 == L6_2 then
    L6_2 = L1_1.SafeSetActive
    L7_2 = A0_2._binder
    L7_2 = L7_2.go_elite
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = L1_1.SafeSetActive
    L7_2 = A0_2._binder
    L7_2 = L7_2.go_elite01
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = L1_1.SafeSetActive
    L7_2 = A0_2._binder
    L7_2 = L7_2.go_elite02
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = L1_1.SafeSetActive
    L7_2 = A0_2._binder
    L7_2 = L7_2.go_elite03
    L8_2 = false
    L6_2(L7_2, L8_2)
  else
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.MonsterRank
    L6_2 = L6_2.LittleBoss
    if L5_2 ~= L6_2 then
      L6_2 = CS
      L6_2 = L6_2.RPG
      L6_2 = L6_2.GameCore
      L6_2 = L6_2.MonsterRank
      L6_2 = L6_2.BigBoss
      if L5_2 ~= L6_2 then
        goto lbl_108
      end
    end
    L6_2 = L1_1.SafeSetActive
    L7_2 = A0_2._binder
    L7_2 = L7_2.go_elite
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = L1_1.SafeSetActive
    L7_2 = A0_2._binder
    L7_2 = L7_2.go_elite01
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = L1_1.SafeSetActive
    L7_2 = A0_2._binder
    L7_2 = L7_2.go_elite02
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = L1_1.SafeSetActive
    L7_2 = A0_2._binder
    L7_2 = L7_2.go_elite03
    L8_2 = false
    L6_2(L7_2, L8_2)
    goto lbl_113
    ::lbl_108::
    L6_2 = L1_1.SafeSetActive
    L7_2 = A0_2._binder
    L7_2 = L7_2.go_elite
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  ::lbl_113::
  L7_2 = A0_2
  L6_2 = A0_2._refresh_weak_point
  L6_2(L7_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.scroll_avatars
  L7_2 = L6_2
  L6_2 = L6_2.SetListItemCount
  L8_2 = A0_2._entityList
  L8_2 = L8_2.Count
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.scroll_avatars
  L7_2 = L6_2
  L6_2 = L6_2.RefreshAllShownItem
  L6_2(L7_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.txt_details
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L2_2.MonsterIntroduction
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._refresh_buff
  L6_2(L7_2)
end
L0_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._weakPointsUsing
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.remove
    L6_2 = A0_2._weakPointsUsing
    L5_2 = L5_2(L6_2)
    L7_2 = L5_2
    L6_2 = L5_2.show_weakpoint
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._weakPointsCaching
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._AllDamageType
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2._has_this_weakness
    L7_2 = A0_2._AllDamageType
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.ID
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L5_2 = table
      L5_2 = L5_2.remove
      L6_2 = A0_2._weakPointsCaching
      L5_2 = L5_2(L6_2)
      L7_2 = L5_2
      L6_2 = L5_2.show_weakpoint
      L8_2 = true
      L6_2(L7_2, L8_2)
      L7_2 = L5_2
      L6_2 = L5_2.setup_view
      L8_2 = A0_2._AllDamageType
      L8_2 = L8_2[L4_2]
      L8_2 = L8_2.IconNatureForWeakUnactive
      L6_2(L7_2, L8_2)
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._weakPointsUsing
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._refresh_weak_point = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._entity
  L1_2 = L1_2.OwnerWorldRef
  L1_2 = L1_2.EntityManagerRef
  L3_2 = L1_2
  L2_2 = L1_2.QueryCharactersOnStage
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.TeamType
  L4_2 = L4_2.TeamDark
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.MarkManualRelease
  return L2_2(L3_2)
end
L0_1._get_entity_list = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2._entityList
  L3_2 = L3_2.Count
  L3_2 = L3_2 - A2_2
  A2_2 = L3_2 - 1
  L3_2 = nil
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarDialogHeadRow
    L8_2 = G
    L8_2 = L8_2.AvatarDialogHeadRowBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._entityList
  L5_2 = L5_2[A2_2]
  L6_2 = L5_2
  L5_2 = L5_2.GetComponent
  L7_2 = typeof
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.CharacterDataComponent
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.MonsterExcelTable
  L6_2 = L6_2.GetData
  L7_2 = L5_2.CharacterID
  L6_2 = L6_2(L7_2)
  if L6_2 == nil then
    L7_2 = G
    L7_2 = L7_2.SuperDebug
    L7_2 = L7_2.LogErrorFormatWithTag
    L8_2 = G
    L8_2 = L8_2.LogTag
    L8_2 = L8_2.UI
    L9_2 = "The monster config is nil, CharacterID: %s"
    L10_2 = L5_2.CharacterID
    L7_2(L8_2, L9_2, L10_2)
    return
  end
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.MonsterTemplateExcelTable
  L7_2 = L7_2.GetData
  L8_2 = L6_2.MonsterTemplateID
  L7_2 = L7_2(L8_2)
  if L7_2 == nil then
    L8_2 = G
    L8_2 = L8_2.SuperDebug
    L8_2 = L8_2.LogErrorFormatWithTag
    L9_2 = G
    L9_2 = L9_2.LogTag
    L9_2 = L9_2.UI
    L10_2 = "The monster template config is nil, CharacterID: %s"
    L11_2 = L6_2.MonsterTemplateID
    L8_2(L9_2, L10_2, L11_2)
    return
  end
  L9_2 = L4_2
  L8_2 = L4_2.set_icon
  L10_2 = L7_2.RoundIconPath
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_selected
  L10_2 = A0_2._entityList
  L10_2 = L10_2[A2_2]
  L11_2 = A0_2._entity
  L10_2 = L10_2 == L11_2
  L8_2(L9_2, L10_2)
  L9_2 = L4_2
  L8_2 = L4_2.set_callback
  L10_2 = A0_2
  L11_2 = A0_2._btn_avatar_onclick
  L12_2 = A2_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  return L3_2
end
L0_1._on_scroll_avatars_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._btn_exit_onclick = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_data
  L4_2 = A0_2._entityList
  L4_2 = L4_2[A1_2]
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L0_1._btn_avatar_onclick = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._entity = A1_2
  L2_2 = A0_2._entity
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
  L2_2 = A0_2._Ability
  L2_2 = L2_2.Weakness
  L3_2 = L2_2
  L2_2 = L2_2.GetAllWeakness
  L2_2 = L2_2(L3_2)
  A0_2._Weakness = L2_2
  L2_2 = A0_2._entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.CharacterDataComponent
  L4_2, L5_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._characterData = L2_2
end
L0_1._refresh_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._buff
  if L1_2 then
    L1_2 = A0_2._buff
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = ipairs
      L2_2 = A0_2._buff
      L1_2, L2_2, L3_2 = L1_2(L2_2)
      for L4_2, L5_2 in L1_2, L2_2, L3_2 do
        L7_2 = L5_2
        L6_2 = L5_2._exit
        L6_2(L7_2)
      end
    end
  end
  L1_2 = {}
  A0_2._buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_buff_data
  L1_2(L2_2)
  L1_2 = A0_2._BuffDatas
  L1_2 = #L1_2
  if L1_2 == 0 then
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
    L1_2 = 1
    L2_2 = A0_2._BuffDatas
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L6_2 = A0_2
      L5_2 = A0_2.create_panel
      L7_2 = G
      L7_2 = L7_2.MonsterDialogBuffRow
      L8_2 = G
      L8_2 = L8_2.MonsterDialogBuffRowBinder
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L7_2 = L5_2
      L6_2 = L5_2.async_bind
      L8_2 = A0_2._binder
      L8_2 = L8_2.node_buff
      L8_2 = L8_2.transform
      L6_2(L7_2, L8_2)
      L7_2 = L5_2
      L6_2 = L5_2.set_async_callback
      L8_2 = A0_2
      function L9_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = L5_2
        L1_3 = L0_3
        L0_3 = L0_3.init_view
        L2_3 = A0_2._BuffDatas
        L3_3 = L4_2
        L2_3 = L2_3[L3_3]
        L0_3(L1_3, L2_3)
      end
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._buff
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._refresh_buff = L3_1
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
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._BuffDatas
  L4_2 = A0_2._sort_modifiers
  L2_2(L3_2, L4_2)
end
L0_1._refresh_buff_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.GetModifierConfig
  L2_2 = L2_2(L3_2)
  L4_2 = A1_2
  L3_2 = A1_2.GetModifierConfig
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2.Priority
  L5_2 = L3_2.Priority
  if L4_2 ~= L5_2 then
    L4_2 = L2_2.Priority
    L5_2 = L3_2.Priority
    L4_2 = L4_2 > L5_2
    return L4_2
  end
  L4_2 = A0_2.UIIndex
  L5_2 = A1_2.UIIndex
  L4_2 = L4_2 > L5_2
  return L4_2
end
L0_1._sort_modifiers = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 0
  L3_2 = A0_2._Weakness
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._Weakness
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.Key
    if L6_2 == A1_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._has_this_weakness = L3_1
return L0_1
