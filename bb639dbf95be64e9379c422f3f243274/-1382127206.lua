local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaInvitation.GachaInvitationAvatarItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaInvitationAvatarItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2.is_can_interactive = true
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.avatar_id = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2.avatar_id
  L2_2 = L2_2(L3_2)
  A0_2._avatar_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._set_rank_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_btn_root_state
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.blank1
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.blank2
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.blank1
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.blank2
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_blank = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.is_can_interactive
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2.enabled = true
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2.enabled = false
  end
end
L0_1._set_btn_root_state = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rank_info_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._set_rank_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.is_can_interactive
  if L1_2 then
    L1_2 = A0_2._btn_callback
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.save_navigation_target
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_root
      L3_2 = L3_2.gameObject
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._btn_callback
      L2_2 = A0_2._btn_callback_caller
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_root_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_root_click
  L1_2(L2_2)
end
L0_1.trigger_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.on_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.on_unselect = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._btn_callback_caller = A1_2
  A0_2._btn_callback = A2_2
end
L0_1.set_btn_callback = L1_1
