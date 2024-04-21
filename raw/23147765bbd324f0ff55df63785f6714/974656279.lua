local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.RedDot"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.RedDotBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TrialAvatarHeadIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1[3] = "#73b0f4"
L1_1[4] = "#c197ff"
L1_1[5] = "#ffcf70"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_button_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.trigger_button_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._role_trial_row = A1_2
  L3_2 = A0_2._role_trial_row
  L3_2 = L3_2.AvatarID
  A0_2._avatar_id = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._avatar_id
  L3_2 = L3_2(L4_2)
  A0_2._row = L3_2
  A0_2._index = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.refresh_finish_view
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._index
  return L1_2
end
L0_1.get_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_grad
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = A0_2._row
    L4_2 = L4_2.Rarity
    L4_2 = #L4_2
    L4_2 = L1_1[L4_2]
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_grad
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#000000"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  end
end
L0_1.set_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.RoleTrialModule
  L4_2 = L3_2
  L3_2 = L3_2.IsRewardTaken
  L5_2 = A0_2._role_trial_row
  L5_2 = L5_2.StageID
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.refresh_finish_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_avatar
  L4_2 = A0_2._role_trial_row
  L4_2 = L4_2.AvatarCutinPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_line
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = A0_2._row
  L3_2 = L3_2.Rarity
  L3_2 = #L3_2
  L3_2 = L1_1[L3_2]
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RoleTrialActivityReward"
  L4_2 = A0_2._role_trial_row
  L4_2 = L4_2.StageID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._click_callback = A1_2
  A0_2._click_callback_self = A2_2
  A0_2._param = A3_2
end
L0_1.bind_button_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
end
L0_1.bind_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_button_click
  L1_2(L2_2)
end
L0_1.trigger_button_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._click_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._click_callback_self
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._click_callback
  L2_2 = A0_2._click_callback_self
  L3_2 = A0_2._param
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_button_click = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
return L0_1
