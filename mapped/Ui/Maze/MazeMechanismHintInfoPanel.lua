local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeMechanismHintInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeMechanismHintInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._node_drone = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_load_hint_info
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_load_hint_info
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_hint_info = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.node_hint_info
  L3_2 = L3_2.transform
  L4_2 = "Title/Text"
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.txt_hint = L1_2
  L1_2 = G
  L1_2 = L1_2.ComponentExtensions
  L1_2 = L1_2.SafeGetCmpt
  L2_2 = typeof
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.node_hint_info
  L3_2 = L3_2.transform
  L4_2 = ""
  L5_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.animation_hint = L1_2
  A0_2.visible = false
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdventureUIFuncBtnRefresh
  L4_2 = L0_1._on_func_btn_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AdeventureFuncBtnClick
  L4_2 = L0_1._on_hide
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L2_2.FuncBtnModule
    if L3_2 then
      L3_2 = L2_2.FuncBtnModule
      L3_2 = L3_2.CurrentTopFuncBtnParam
      if L3_2 ~= nil then
        L4_2 = L3_2.BtnHintTextID
        if L4_2 ~= nil then
          L4_2 = L3_2.BtnHintTextID
          L5_2 = L4_2
          L4_2 = L4_2.IsEmpty
          L4_2 = L4_2(L5_2)
          if not L4_2 then
            goto lbl_30
          end
        end
      end
      L5_2 = A0_2
      L4_2 = A0_2.show_hint_info
      L6_2 = nil
      L7_2 = false
      L4_2(L5_2, L6_2, L7_2)
      goto lbl_34
      ::lbl_30::
      L5_2 = A0_2
      L4_2 = A0_2.show_hint_info
      L6_2 = L3_2.BtnHintTextID
      L7_2 = L3_2.ShowBtnFuncHint
      L4_2(L5_2, L6_2, L7_2)
    end
  end
  ::lbl_34::
end
L0_1._on_func_btn_refresh = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.show_hint_info
  L3_2 = nil
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_hide = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 then
    L3_2 = A0_2.txt_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.visible
    if not L3_2 then
      L3_2 = A0_2.animation_hint
      L4_2 = L3_2
      L3_2 = L3_2.Play
      L5_2 = "HintInfoDialogFadeIn"
      L3_2(L4_2, L5_2)
    end
  else
    L3_2 = A0_2.visible
    if L3_2 then
      L3_2 = A0_2.animation_hint
      L4_2 = L3_2
      L3_2 = L3_2.Play
      L5_2 = "HintInfoDialogFadeOut"
      L3_2(L4_2, L5_2)
    end
  end
  A0_2.visible = A2_2
end
L0_1.show_hint_info = L1_1
return L0_1
