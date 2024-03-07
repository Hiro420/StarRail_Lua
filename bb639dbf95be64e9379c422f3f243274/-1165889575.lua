local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Battle.BattleSkillTextDialogView"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleSkillTextDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1.34
L2_1 = G
L2_1 = L2_1.ComponentExtensions
L3_1 = G
L3_1 = L3_1.TextExtensions
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattleSkillTextDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIUtils
  L1_2 = L1_2.IsAdventurePhase
  A0_2._is_hide_cursor = L1_2
  A0_2._is_focusable = false
  A0_2.block_when_async_load = false
  A0_2._allow_camera_zoom_rotation_by_mouse = true
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._text_id_skill = A1_2
  L3_2 = L1_1
  A0_2._life_time = L3_2
  if A2_2 ~= nil and A2_2 == true then
    A0_2._is_dark = true
  else
    A0_2._is_dark = false
  end
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.super
  L1_2 = L1_2._setup_view
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = L3_1.SafeSetTextID
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_skill_01
  L3_2 = A0_2._text_id_skill
  L1_2(L2_2, L3_2)
  L1_2 = L3_1.SafeSetTextID
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_skill_02
  L3_2 = A0_2._text_id_skill
  L1_2(L2_2, L3_2)
  L1_2 = L2_1.SafeSetActive
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_light
  L3_2 = A0_2._is_dark
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = L2_1.SafeSetActive
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_dark
  L3_2 = A0_2._is_dark
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._life_time
  L2_2 = L2_2 - A1_2
  A0_2._life_time = L2_2
  L2_2 = A0_2._life_time
  if L2_2 <= 0 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L0_1._on_tick = L4_1
return L0_1
