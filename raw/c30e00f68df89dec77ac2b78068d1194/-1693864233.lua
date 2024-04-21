local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceBranchPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceBranchPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.current_use_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_root_btn_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._branch_data = A1_2
  A0_2._aeon_id = A2_2
  A0_2._is_aeon_selected = A3_2
  L4_2 = A0_2._branch_data
  L4_2 = L4_2.IsUnlocked
  if not L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.root_animator
    L5_2 = L4_2
    L4_2 = L4_2.SetTrigger
    L6_2 = "Lock"
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_locked_view
    L4_2(L5_2)
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.Prefs
    L4_2 = L4_2.User
    L4_2 = L4_2.RogueNousSeenBranchRedDot
    L5_2 = L4_2
    L4_2 = L4_2.Contains
    L6_2 = A0_2._branch_data
    L6_2 = L6_2.BranchID
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._setup_normal_view
      L4_2(L5_2)
      L5_2 = A0_2
      L4_2 = A0_2._setup_locked_view
      L4_2(L5_2)
      L5_2 = A0_2
      L4_2 = A0_2._trigger_unlock
      L4_2(L5_2)
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.root_animator
      L5_2 = L4_2
      L4_2 = L4_2.SetTrigger
      L6_2 = "LockNormal"
      L4_2(L5_2, L6_2)
      L5_2 = A0_2
      L4_2 = A0_2._setup_normal_view
      L4_2(L5_2)
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._try_bind_red_dot
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_last_use_root_active
  L4_2(L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_owner = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_root_btn_click
  L1_2(L2_2)
end
L0_1.trigger_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_animator
  L3_2 = L2_2
  L2_2 = L2_2.SetBool
  L4_2 = "IsChecked"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_set_cur_selected_root_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root_animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Checked"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.root_animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Unchecked"
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_checked = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._branch_data
  return L1_2
end
L0_1.get_data = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  return L1_2
end
L0_1.get_root_btn_ref = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_state_name_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.BranchName
  L1_2(L2_2, L3_2)
end
L0_1._setup_locked_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.normal_state_title_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.BranchName
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.normal_state_branch_icon
  L4_2 = A0_2._branch_data
  L4_2 = L4_2.DiceIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.normal_state_unpass_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.IsAnyLevelPassed
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.normal_state_pass_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.IsAnyLevelPassed
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.normal_state_pass_level_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.IsHardestLevelPassed
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.normal_state_pass_hard_level_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.IsHardestLevelPassed
  if L3_2 then
    L3_2 = A0_2._branch_data
    L3_2 = L3_2.BestCompLevelRecord
    L3_2 = L3_2 ~= 0
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.normal_state_pass_hard_level_comp_num
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.BestCompLevelRecord
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.normal_state_pass_level_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.UITextUtils
  L3_2 = L3_2.GetRomanNumberTextID
  L4_2 = A0_2._branch_data
  L4_2 = L4_2.BestLevelPassRecord
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.normal_state_pass_hard_level_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.UITextUtils
  L3_2 = L3_2.GetRomanNumberTextID
  L4_2 = A0_2._branch_data
  L4_2 = L4_2.BestLevelPassRecord
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.normal_state_pass_hard_level_comp_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.BestCompLevelRecord
  L1_2(L2_2, L3_2)
end
L0_1._setup_normal_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueNousSeenBranchRedDot
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.BranchID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "Unlock"
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueNousSeenBranchRedDot
  L2_2 = L1_2
  L1_2 = L1_2.Add
  L3_2 = A0_2._branch_data
  L3_2 = L3_2.BranchID
  L1_2(L2_2, L3_2)
end
L0_1._trigger_unlock = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.get_selected_branch_id_and_tag
  L1_2, L2_2 = L1_2()
  L3_2 = A0_2._binder
  L3_2 = L3_2.last_use_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._branch_data
  L5_2 = L5_2.BranchID
  L5_2 = A0_2._is_aeon_selected
  L5_2 = L5_2 == L1_2 and L5_2
  L3_2(L4_2, L5_2)
end
L0_1._set_last_use_root_active = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.current_use_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A0_2._is_aeon_selected
    if L4_2 then
      L4_2 = A0_2._branch_data
      L4_2 = L4_2.IsUnlocked
    end
  end
  L2_2(L3_2, L4_2)
end
L0_1._try_set_cur_selected_root_active = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RogueNousBranchNew"
  L4_2 = A0_2._branch_data
  L4_2 = L4_2.BranchID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.red_dot_root
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._red_dot_inited = true
end
L0_1._try_bind_red_dot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._click_callback
  if L1_2 then
    L1_2 = A0_2._click_owner
    if L1_2 then
      L1_2 = A0_2._click_callback
      L2_2 = A0_2._click_owner
      L3_2 = A0_2
      L4_2 = A0_2._branch_data
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  L1_2 = A0_2._branch_data
  L2_2 = L1_2
  L1_2 = L1_2.RefreshFirstTimeUnlockStatus
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_root_btn_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.DiceBuild.RogueNousDiceEffectDisplayDialog"
  L3_2 = A0_2._branch_data
  L1_2(L2_2, L3_2)
end
L0_1._on_show_detail_btn_clicked = L1_1
return L0_1
