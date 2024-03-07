local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.HeartDial.HeartDialMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.HeartDial.HeartDialNormalPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.HeartDial.HeartDialMissingPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.HeartDial.HeartDialFullPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.HeartDial.HeartDialLockPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.HeartDial.HeartDialUnlockPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Team.TeamDataProviders.RaidTeamDataProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RaidUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.HeartDialModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.RaidModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.TeamModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_DialogueManager
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.HeartDialEmoType
L6_1 = {}
L7_1 = L5_1.Peace
L6_1[L7_1] = 0
L7_1 = L5_1.Anger
L6_1[L7_1] = 1
L7_1 = L5_1.Happy
L6_1[L7_1] = 2
L7_1 = L5_1.Sad
L6_1[L7_1] = 3
L7_1 = G
L7_1 = L7_1.Class
L8_1 = "HeartDialMainPage"
L9_1 = G
L9_1 = L9_1.UIController
L7_1 = L7_1(L8_1, L9_1)
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HeartDialMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._block_input = true
end
L7_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L4_1.DialogueEntity
  A0_2._dialogue_entity = L1_2
  L1_2 = A0_2._dialogue_entity
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_GamePhaseManager
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentPhase
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.GetMainWorld
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.EntityManagerRef
    L3_2 = L2_2
    L2_2 = L2_2.GetEntityByUniqueName
    L4_2 = "DreamlandNpc"
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._dialogue_entity = L2_2
  end
  L1_2 = A0_2._dialogue_entity
  L1_2 = L1_2.RuntimeID
  A0_2._dialogueNpcRuntimeID = L1_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetHeartDialStepByRuntimeID
  L3_2 = A0_2._dialogueNpcRuntimeID
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._currentScriptStepType = L1_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetHeartDialEmoByRuntimeID
  L3_2 = A0_2._dialogueNpcRuntimeID
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._currentEmoType = L1_2
  L1_2 = A0_2._currentEmoType
  A0_2._selectEmoType = L1_2
end
L7_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
end
L7_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeartDialUnLockEmo
  L4_2 = A0_2._on_heartdial_unlock_emo
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeartDialLockStepFinish
  L4_2 = A0_2._on_heartdial_lock_step_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeartDialChangeEmoType
  L4_2 = A0_2._on_heartdial_change_emo
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeartDialStepMove
  L4_2 = A0_2._on_heartdial_step_change
  L1_2(L2_2, L3_2, L4_2)
end
L7_1._add_handlers = L8_1
function L8_1(A0_2, A1_2)
end
L7_1._on_tick = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._dialogue_entity = nil
end
L7_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L7_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._currentScriptStepType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.HeartDialStepType
  L2_2 = L2_2.Missing
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._refresh_missing_panel
    L1_2(L2_2)
  else
    L1_2 = A0_2._currentScriptStepType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.HeartDialStepType
    L2_2 = L2_2.Full
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._refresh_full_panel
      L1_2(L2_2)
    else
      L1_2 = A0_2._currentScriptStepType
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.HeartDialStepType
      L2_2 = L2_2.Lock
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._refresh_lock_panel
        L1_2(L2_2)
      else
        L1_2 = A0_2._currentScriptStepType
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.HeartDialStepType
        L2_2 = L2_2.Normal
        if L1_2 == L2_2 then
          L2_2 = A0_2
          L1_2 = A0_2._refresh_normal_panel
          L1_2(L2_2)
        else
          L1_2 = A0_2._currentScriptStepType
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.GameCore
          L2_2 = L2_2.HeartDialStepType
          L2_2 = L2_2.UnLock
          if L1_2 == L2_2 then
            L2_2 = A0_2
            L1_2 = A0_2._refresh_unlock_panel
            L1_2(L2_2)
          end
        end
      end
    end
  end
end
L7_1._refresh_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._normal_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_normal_panel
    L3_2 = L3_2.Prefab
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_normal_panel
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.HeartDialNormalPanel
    L5_2 = G
    L5_2 = L5_2.HeartDialNormalPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._normal_panel = L2_2
    L2_2 = A0_2._normal_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = A0_2._normal_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._dialogue_entity
  L1_2(L2_2, L3_2)
end
L7_1._refresh_normal_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._missing_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_broken_panel
    L3_2 = L3_2.Prefab
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_broken_panel
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.HeartDialMissingPanel
    L5_2 = G
    L5_2 = L5_2.HeartDialMissingPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._missing_panel = L2_2
    L2_2 = A0_2._missing_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.try_adjust_ui
  L1_2(L2_2)
  L1_2 = A0_2._missing_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._dialogue_entity
  L1_2(L2_2, L3_2)
end
L7_1._refresh_missing_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._lock_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_unlock_panel
    L3_2 = L3_2.Prefab
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_unlock_panel
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.HeartDialLockPanel
    L5_2 = G
    L5_2 = L5_2.HeartDialLockPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._lock_panel = L2_2
    L2_2 = A0_2._lock_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = A0_2._lock_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._dialogue_entity
  L1_2(L2_2, L3_2)
end
L7_1._refresh_lock_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetNpcScriptID
  L3_2 = A0_2._dialogueNpcRuntimeID
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._scriptID = L1_2
  L1_2 = A0_2._lock_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_unlock_panel
    L3_2 = L3_2.Prefab
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_unlock_panel
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.HeartDialLockPanel
    L5_2 = G
    L5_2 = L5_2.HeartDialLockPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._lock_panel = L2_2
    L2_2 = A0_2._lock_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._lock_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_unlock_anim_loop
    L2_2(L3_2)
  end
  L1_2 = A0_2._lock_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._dialogue_entity
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._unlock_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_unlock_panel
    L3_2 = L3_2.MultiPrefabList
    L3_2 = L3_2[1]
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_unlock_panel
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.HeartDialUnlockPanel
    L5_2 = G
    L5_2 = L5_2.HeartDialUnlockPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._unlock_panel = L2_2
    L2_2 = A0_2._unlock_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = A0_2._unlock_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._dialogue_entity
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._unlock_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_btn_callback
  L3_2 = A0_2
  L4_2 = A0_2._on_unlock_panel_btn
  L1_2(L2_2, L3_2, L4_2)
end
L7_1._refresh_unlock_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._full_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_event_panel
    L3_2 = L3_2.Prefab
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_event_panel
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.HeartDialFullPanel
    L5_2 = G
    L5_2 = L5_2.HeartDialFullPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._full_panel = L2_2
    L2_2 = A0_2._full_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = A0_2._full_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._dialogue_entity
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 33
  L1_2(L2_2, L3_2)
end
L7_1._refresh_full_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L7_1._on_top_page = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L7_1._on_btn_close = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetScriptInfoByScriptID
  L3_2 = A0_2._scriptID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.UnlockRaidID
  A0_2._raid_id = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RaidConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._raid_id
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.CheckIsHavingSave
  L5_2 = A0_2._raid_id
  L6_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2._dialogue_entity
  L5_2 = L4_2
  L4_2 = L4_2.GetComponent
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.NPCComponent
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L5_2 = L4_2.MapNpcDef
  L5_2 = L5_2.ServerEntitiyID
  if L3_2 then
    L6_2 = L2_1
    L7_2 = L6_2
    L6_2 = L6_2.StartTreasureChallenge
    L8_2 = L5_2
    L9_2 = A0_2._raid_id
    L10_2 = 0
    L11_2 = nil
    L12_2 = true
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  else
    L6_2 = L2_1
    L7_2 = L6_2
    L6_2 = L6_2.GetRaidEnterType
    L8_2 = A0_2._raid_id
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.RaidEnterType
    L7_2 = L7_2.SkipUI
    if L6_2 == L7_2 then
      L6_2 = L2_1
      L7_2 = L6_2
      L6_2 = L6_2.StartTreasureChallenge
      L8_2 = L5_2
      L9_2 = A0_2._raid_id
      L10_2 = 0
      L11_2 = nil
      L12_2 = true
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    else
      L7_2 = A0_2
      L6_2 = A0_2._try_generate_recommend_attribute
      L8_2 = L2_2
      L6_2(L7_2, L8_2)
      L6_2 = G
      L6_2 = L6_2.Utils
      L6_2 = L6_2.create_lua_table_from_cs_array
      L7_2 = L2_2.LimitIDList
      L6_2 = L6_2(L7_2)
      A0_2._limited_ids = L6_2
      L6_2 = L2_2.TeamType
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.RaidTeamType
      L7_2 = L7_2.TrialAndPlayer
      if L6_2 ~= L7_2 then
        L6_2 = L2_2.TeamType
        L7_2 = CS
        L7_2 = L7_2.RPG
        L7_2 = L7_2.GameCore
        L7_2 = L7_2.RaidTeamType
        L7_2 = L7_2.TrialOrPlayer
        if L6_2 ~= L7_2 then
          goto lbl_116
        end
      end
      L6_2 = G
      L6_2 = L6_2.new
      L7_2 = G
      L7_2 = L7_2.RaidTeamDataProvider
      L6_2 = L6_2(L7_2)
      L8_2 = L6_2
      L7_2 = L6_2.set_raid_row
      L9_2 = L2_2
      L7_2(L8_2, L9_2)
      L7_2 = G
      L7_2 = L7_2.new
      L8_2 = "Ui.Team.LocalTeamEditPage"
      L7_2 = L7_2(L8_2)
      L9_2 = L7_2
      L8_2 = L7_2.init
      L10_2 = LocalTeamSourceType
      L10_2 = L10_2.Raid
      L11_2 = A0_2._on_enter_raid
      L12_2 = A0_2
      L13_2 = A0_2._limited_ids
      L14_2 = false
      L15_2 = false
      L16_2 = A0_2._recommend_attributes
      L17_2 = L2_2
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L9_2 = L7_2
      L8_2 = L7_2.set_team_data_provider
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.async_show
      L8_2(L9_2)
      goto lbl_127
      ::lbl_116::
      L6_2 = G
      L6_2 = L6_2.UIManager
      L6_2 = L6_2.load_and_async_show
      L7_2 = "Ui.FarmEnemy.FarmTeamEditPage"
      L8_2 = A0_2._on_enter_raid
      L9_2 = A0_2
      L10_2 = A0_2._limited_ids
      L11_2 = false
      L12_2 = false
      L13_2 = A0_2._recommend_attributes
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  end
  ::lbl_127::
end
L7_1._on_unlock_panel_btn = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.AutoObtainDamageType
  if L2_2 == false then
    L3_2 = A0_2
    L2_2 = A0_2._try_read_recommend_attribute
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._recommend_attributes = L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_cal_recommend_attribute
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._recommend_attributes = L2_2
  end
end
L7_1._try_generate_recommend_attribute = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = A1_2.DamageType
  return L2_2(L3_2)
end
L7_1._try_read_recommend_attribute = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.RaidUtils
  L2_2 = L2_2.get_all_monster_ids_by_raid
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.RaidUtils
  L3_2 = L3_2.auto_construct_recommend_attributes
  L4_2 = L2_2
  L5_2 = true
  return L3_2(L4_2, L5_2)
end
L7_1._try_cal_recommend_attribute = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._dialogue_entity
  L3_2 = L2_2
  L2_2 = L2_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.NPCComponent
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = L2_2.MapNpcDef
  L3_2 = L3_2.ServerEntitiyID
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.StartTreasureChallenge
  L6_2 = L3_2
  L7_2 = A0_2._raid_id
  L8_2 = 0
  L9_2 = A1_2
  L10_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L7_1._on_enter_raid = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L7_1._on_heartdial_unlock_emo = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L7_1._on_heartdial_lock_step_finish = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L7_1._on_heartdial_missing_finish = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._currentEmoType
  A0_2._currentEmoType = A1_2
  A0_2._selectEmoType = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._hide_content
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_show
  L4_2 = "Ui.HeartDial.HeartDialEmoChangeDialog"
  L5_2 = A0_2._dialogue_entity
  L6_2 = A0_2._currentEmoType
  L7_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.register_exit_callback
  L6_2 = A0_2
  L7_2 = A0_2._on_dialog_close
  L4_2(L5_2, L6_2, L7_2)
end
L7_1._on_heartdial_change_emo = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._currentScriptStepType
  A0_2._currentScriptStepType = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeartDialStepType
  L3_2 = L3_2.Missing
  if L2_2 == L3_2 then
    L3_2 = A0_2._missing_panel
    L4_2 = L3_2
    L3_2 = L3_2.register_exit_callback
    L5_2 = A0_2
    L6_2 = A0_2._on_heartdial_missing_finish
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._missing_panel
    L4_2 = L3_2
    L3_2 = L3_2.play_unlock
    L3_2(L4_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.HeartDialStepType
    L3_2 = L3_2.Lock
    if L2_2 == L3_2 then
      L3_2 = A0_2._lock_panel
      L4_2 = L3_2
      L3_2 = L3_2.play_unlock_anim
      L3_2(L4_2)
      L4_2 = A0_2
      L3_2 = A0_2._add_notify_handler
      L5_2 = G
      L5_2 = L5_2.CS
      L5_2 = L5_2.NotifyType
      L5_2 = L5_2.UIAnimationEvent
      L6_2 = A0_2._on_anim_trigger_refresh
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L7_1._on_heartdial_step_change = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "MoodRaidCardPanel_FadeIn" then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_view
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._remove_notify_handler
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIAnimationEvent
    L5_2 = A0_2._on_anim_trigger_refresh
    L2_2(L3_2, L4_2, L5_2)
  end
end
L7_1._on_anim_trigger_refresh = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.set_light_weight_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L7_1._on_dialog_close = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.set_light_weight_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L7_1._hide_content = L8_1
return L7_1
