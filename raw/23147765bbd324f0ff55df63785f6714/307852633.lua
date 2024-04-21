local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonBuffDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonBuffDetailDialog"
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
  L3_2 = L3_2.TreasureDungeonBuffDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._data = A1_2
  L3_2 = A2_2 or L3_2
  if A2_2 == nil or not A2_2 then
    L3_2 = 0
  end
  A0_2._current = L3_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.create_short_cut_hint_panel
    L2_3 = 33
    L3_3 = A0_2._binder
    L3_3 = L3_3.scroll_rect
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.BattleUIUtils
  L1_2 = L1_2.set_battle_pause
  L2_2 = false
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._data
  L3_2 = L3_2.Desc
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_buff
  L4_2 = A0_2._data
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.BattleTargetConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.BuffRow
  L2_2 = L2_2.BattleTargetID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_target
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.TargetName
  L5_2 = L1_2.TargetParam
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._data
  L4_2 = L4_2.BuffRow
  L4_2 = L4_2.BattleTargetBouns
  L5_2 = A0_2._data
  L5_2 = L5_2.BuffRow
  L5_2 = L5_2.TargetBounsParam
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._current
  L3_2 = L1_2.TargetParam
  L2_2 = L2_2 >= L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.animator
  L4_2 = L3_2
  L3_2 = L3_2.SetTrigger
  if L2_2 then
    L5_2 = "Succeed"
    if L5_2 then
      goto lbl_59
    end
  end
  L5_2 = "Pending"
  ::lbl_59::
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_GamePhaseManager
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentPhase
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.UtilEngineWrap
  L4_2 = L4_2.IsCsType
  L5_2 = L3_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.BattleGamePhase
  L4_2 = L3_2 ~= nil and L4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_not_in_battle
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
  if L4_2 then
    L5_2 = G
    L5_2 = L5_2.BattleUIUtils
    L5_2 = L5_2.set_battle_pause
    L6_2 = true
    L5_2(L6_2)
  end
  L5_2 = not L4_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_progress
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if L5_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_count_current
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetText
    L8_2 = A0_2._current
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.txt_count_total
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetText
    L8_2 = L1_2.TargetParam
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L1_1
return L0_1
