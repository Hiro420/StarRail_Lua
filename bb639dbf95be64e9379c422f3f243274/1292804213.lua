local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.NPCWarningTip.NPCWarningTipsPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NPCWarningTipsPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.UnityEngine
L1_1 = L1_1.Animator
L1_1 = L1_1.StringToHash
L2_1 = "NameBoard"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.block_when_async_load = false
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_BelowPage
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.NPCWarningTipsPanelBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._warning_tips_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NPCWarningTipConfig
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  A0_2._warning_tip_config_list = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnOutScreenAlertEnemyAdd
  L4_2 = L0_1._on_add_npc_warning_tips
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnOutScreenAlertEnemyRemove
  L4_2 = L0_1._on_remove_npc_warning_tips
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventureTriggerBattleStart
  L4_2 = L0_1._on_adventure_battle_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventurePhaseEnd
  L4_2 = L0_1._on_adventure_phase_end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._warning_tips_list
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_npc_warning_tips
  L2_2(L3_2)
end
L0_1._on_add_npc_warning_tips = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = A0_2._warning_tips_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._warning_tips_list
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.RuntimeID
    L7_2 = A1_2.RuntimeID
    if L6_2 == L7_2 then
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = A0_2._warning_tips_list
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
      break
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_npc_warning_tips
  L2_2(L3_2)
end
L0_1._on_remove_npc_warning_tips = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_adventure_phase_end = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  A0_2._warning_tips_list = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_npc_warning_tips
  L2_2(L3_2)
end
L0_1._on_adventure_battle_start = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._warning_tip_config_list
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = A0_2._warning_tips_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._warning_tips_list
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2 or L6_2
    if L5_2 then
      L6_2 = L5_2.UnityGO
      if L6_2 then
        L6_2 = L5_2.UnityGO
        L7_2 = L6_2
        L6_2 = L6_2.GetComponent
        L8_2 = typeof
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.Client
        L9_2 = L9_2.AttachPointMapping
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      end
    end
    L7_2 = L6_2 or L7_2
    if L6_2 then
      L8_2 = L6_2
      L7_2 = L6_2.FindAttachPoint
      L9_2 = L1_1
      L7_2 = L7_2(L8_2, L9_2)
    end
    if L6_2 and L7_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.NPCWarningTipConfig
      L8_2 = L8_2()
      L8_2.TargetEntity = L5_2
      L8_2.AssetPath = "UI/Maze/Widget/MazeMonsterWarningMark.prefab"
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.Vector3
      L9_2 = L9_2.zero
      L8_2.Offset = L9_2
      L9_2 = L7_2.gameObject
      L8_2.Target = L9_2
      L9_2 = A0_2._warning_tip_config_list
      L10_2 = L9_2
      L9_2 = L9_2.Add
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.container_warning_tips
  L2_2 = L1_2
  L1_2 = L1_2.Refresh
  L3_2 = A0_2._warning_tip_config_list
  L1_2(L2_2, L3_2)
end
L0_1._refresh_npc_warning_tips = L2_1
return L0_1
