local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarHeadIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.RedDot"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.RedDotBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarHeadIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
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
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.trigger_button_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  A0_2._show_favorite_mark = false
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._avatar_data = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  A0_2._show_favorite_mark = A1_2
end
L0_1.set_is_show_favorite_mark = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._avatar_data = A1_2
  A0_2._selected_index = A4_2
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.TutorialSupportModule
  L6_2 = L5_2
  L5_2 = L5_2.SetNodeDynamicKey
  L7_2 = A0_2._binder
  L7_2 = L7_2.root
  L7_2 = L7_2.gameObject
  L8_2 = A0_2._avatar_data
  L8_2 = L8_2.ID
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_avatar
  L8_2 = A0_2._avatar_data
  L8_2 = L8_2.AvatarSideIconPath
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_trial_mark
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._avatar_data
  L7_2 = L7_2.IsTrialPlayer
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._avatar_data
  L5_2 = L5_2.IsTrialPlayer
  if L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_trial_mark
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = G
    L7_2 = L7_2.AvatarUtils
    L7_2 = L7_2.get_special_avatar_hint
    L8_2 = A0_2._avatar_data
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_support_mark
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._avatar_data
  L7_2 = L7_2.IsAssistAvatar
  L5_2(L6_2, L7_2)
  L5_2 = A1_2.Row
  L5_2 = L5_2.Rarity
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.CombatPowerAvatarRarityType
  L6_2 = L6_2.CombatPowerAvatarRarityType4
  L5_2 = L5_2 == L6_2
  L6_2 = A1_2.Row
  L6_2 = L6_2.Rarity
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.CombatPowerAvatarRarityType
  L7_2 = L7_2.CombatPowerAvatarRarityType5
  L6_2 = L6_2 == L7_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_frame
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = L5_2 or L9_2
  if not L5_2 then
    L9_2 = L6_2
  end
  L7_2(L8_2, L9_2)
  if L5_2 or L6_2 then
    if L6_2 then
      L7_2 = "#E2AC58"
      if L7_2 then
        goto lbl_86
      end
    end
    L7_2 = "#7242B3"
    ::lbl_86::
    L8_2 = A0_2._binder
    L8_2 = L8_2.rank_bg_glow
    L9_2 = G
    L9_2 = L9_2.UIColorUtils
    L9_2 = L9_2.GetColor
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L8_2.color = L9_2
    L8_2 = A0_2._binder
    L8_2 = L8_2.rank_red_dot
    L9_2 = G
    L9_2 = L9_2.UIColorUtils
    L9_2 = L9_2.GetColor
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    L8_2.color = L9_2
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_team_mark
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = A3_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_favorite_mark
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = A0_2._show_favorite_mark
  L9_2 = A0_2._avatar_data
  L9_2 = L9_2 and not A3_2 and L9_2
  L7_2(L8_2, L9_2)
  L7_2 = A1_2.IsTrialPlayer
  if L7_2 then
    L7_2 = G
    L7_2 = L7_2.RedDotModule
    L7_2 = L7_2.Instance
    L8_2 = L7_2
    L7_2 = L7_2.bind_reddot
    L9_2 = "AvatarHeadIcon"
    L10_2 = A1_2.TrialPlayerID
    L11_2 = A0_2
    L12_2 = A0_2._binder
    L12_2 = L12_2.go_reddot
    L12_2 = L12_2.transform
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  else
    L7_2 = A1_2.IsDisplayOnly
    if not L7_2 then
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.bind_reddot
      L9_2 = "AvatarHeadIcon"
      L10_2 = A1_2.ID
      L11_2 = A0_2
      L12_2 = A0_2._binder
      L12_2 = L12_2.go_reddot
      L12_2 = L12_2.transform
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    else
      L7_2 = G
      L7_2 = L7_2.RedDotModule
      L7_2 = L7_2.Instance
      L8_2 = L7_2
      L7_2 = L7_2.unbind_reddot
      L9_2 = A0_2._binder
      L9_2 = L9_2.go_reddot
      L9_2 = L9_2.transform
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_ani_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_team_mark
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A2_2 ~= nil
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_team_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_team_num
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.set_team = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.IsClearSelectedByInputSwitched = A1_2
end
L0_1.set_clear_selected_by_input_switched = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.go_reddot
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_red_dot_active = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A2_2
  A0_2._click_callback_obj = A1_2
end
L0_1.bind_button_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_button_click
  L1_2(L2_2)
end
L0_1.trigger_button_click = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rect_root
  return L1_2
end
L0_1.get_rect_root = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._avatar_data
  L1_2.IsNew = false
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ReddotRefreshAvatarSideID
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._click_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._click_callback
    L2_2 = A0_2._click_callback_obj
    L3_2 = A0_2._avatar_data
    L4_2 = A0_2._selected_index
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1._on_button_click = L1_1
return L0_1
