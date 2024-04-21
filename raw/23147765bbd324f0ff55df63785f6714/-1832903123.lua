local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueCabinetItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueCabinetItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_RogueDLC_Cabinet_InProgress"
L2_1 = "UIText_RogueDLC_Cabinet_LockedName"
L3_1 = "UIText_RogueDLC_TimeLimited_Reward_Finish"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_root_btn_clicked
    L0_3(L1_3)
    L0_3 = A0_2._root_btn_select_handler
    if L0_3 then
      L0_3 = A0_2._root_btn_select_listener
      if L0_3 then
        L0_3 = A0_2._root_btn_select_handler
        L1_3 = A0_2._root_btn_select_listener
        L2_3 = A0_2
        L0_3(L1_3, L2_3)
      end
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._cabinet_data = A1_2
  A0_2._lock_path = A2_2
  L3_2 = A2_2 ~= nil
  A0_2._is_spe = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_status
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "ChessRogueCabinetItem"
  L6_2 = A0_2._cabinet_data
  L6_2 = L6_2.ID
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._cabinet_data
  return L1_2
end
L0_1.get_data_ref = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  return L1_2
end
L0_1.get_root_ref = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_spe
  return L1_2
end
L0_1.is_spe = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2)
end
L0_1.trigger_click = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._root_btn_click_handler = A1_2
  A0_2._root_btn_click_listener = A2_2
end
L0_1.register_click_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._root_btn_select_handler = A1_2
  A0_2._root_btn_select_listener = A2_2
end
L0_1.register_select_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cabinet_data
  L1_2 = L1_2.IsUnlocked
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_locked_status
    L1_2(L2_2)
  else
    L1_2 = A0_2._cabinet_data
    L1_2 = L1_2.IsFinished
    if not L1_2 then
      L1_2 = A0_2._cabinet_data
      L1_2 = L1_2.IsRewardTaken
      if not L1_2 then
        goto lbl_19
      end
    end
    L2_2 = A0_2
    L1_2 = A0_2._setup_finished_status
    L1_2(L2_2)
    goto lbl_21
    ::lbl_19::
    L2_2 = A0_2
    L1_2 = A0_2._setup_doing_status
    L1_2(L2_2)
  end
  ::lbl_21::
end
L0_1._setup_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlocked_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.locked_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.complete_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.name_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_txt
  L1_2 = L1_2.transform
  L1_2 = L1_2.parent
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.name_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_spe
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.spe_icon
    L4_2 = A0_2._lock_path
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.locked_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.spe_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_locked_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.name_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.name_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._cabinet_data
  L3_2 = L3_2.Title
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_txt
  L1_2 = L1_2.transform
  L1_2 = L1_2.parent
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_spe
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.spe_icon
    L4_2 = A0_2._cabinet_data
    L4_2 = L4_2.CabinetIconPath
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.locked_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.unlocked_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.locked_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.complete_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlocked_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.locked_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.complete_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.unlocked_icon
  L4_2 = A0_2._cabinet_data
  L4_2 = L4_2.CabinetIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_doing_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.name_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.name_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._cabinet_data
  L3_2 = L3_2.Title
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.complete_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.state_txt
  L1_2 = L1_2.transform
  L1_2 = L1_2.parent
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.complete_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_spe
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.spe_icon
    L4_2 = A0_2._cabinet_data
    L4_2 = L4_2.CabinetIconPath
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.locked_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.unlocked_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.locked_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.complete_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.unlocked_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.locked_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.complete_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.complete_icon
  L4_2 = A0_2._cabinet_data
  L4_2 = L4_2.CabinetIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_finished_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._root_btn_click_handler
  if L1_2 then
    L1_2 = A0_2._root_btn_click_listener
    if L1_2 then
      L1_2 = A0_2._root_btn_click_handler
      L2_2 = A0_2._root_btn_click_listener
      L3_2 = A0_2._cabinet_data
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_root_btn_clicked = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._cabinet_data
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._cabinet_data
  L1_2 = L1_2.ID
  return L1_2
end
L0_1.get_cabinet_id = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.localPosition
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.parent
  L2_2 = L2_2.localPosition
  L1_2 = L1_2 + L2_2
  return L1_2
end
L0_1.get_relative_localPosition = L4_1
return L0_1
