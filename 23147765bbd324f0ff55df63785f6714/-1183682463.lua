local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.AvatarRelicSetDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarRelicSetDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_replace
  L4_2 = A0_2._on_btn_replace
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_quick_dress
  L4_2 = A0_2._on_btn_quick_dress
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_uninstall
  L4_2 = A0_2._on_btn_uninstall
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  A0_2._avatar_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.relic_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.relic_skill_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_replace
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.IsDisplayOnly
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_quick_dress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.IsDisplayOnly
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_reddot
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsDisplayOnly
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AvatarRelic_QuickDress"
  L4_2 = A0_2._avatar_data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.relic_skill_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  if not A1_2 then
    L2_2 = A0_2._avatar_data
    if L2_2 ~= nil then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L2_2 = A0_2._binder
  L2_2 = L2_2.relic_skill_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._avatar_data
  L2_2(L3_2, L4_2)
end
L0_1._on_toggle_info_detail = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Relic.RelicReplacePage"
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_replace = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.RelicUtils
  L1_2 = L1_2.is_dress_full
  L2_2 = A0_2._avatar_data
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_Relic_QuickEquip_Toast_Already"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.RelicUtils
  L1_2 = L1_2.do_quick_dress_all_relic
  L2_2 = A0_2._avatar_data
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.show_full_screen_block_for_packet
    L4_2 = CS
    L4_2 = L4_2.PBIBDHBOIGI
    L4_2 = L4_2.OPOHODGODJL
    L2_2(L3_2, L4_2)
  else
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_Relic_QuickEquip_Toast_None"
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_quick_dress = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.RelicUtils
  L1_2 = L1_2.is_dress_empty
  L2_2 = A0_2._avatar_data
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = ""
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = "UIText_Relic_RemoveAll_Dialog"
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = G
      L1_3 = L1_3.RelicUtils
      L1_3 = L1_3.do_take_off_all_relic
      L2_3 = A0_2._avatar_data
      L1_3(L2_3)
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.show_full_screen_block_for_packet
      L3_3 = CS
      L3_3 = L3_3.PBIBDHBOIGI
      L3_3 = L3_3.IBKCNLFLHBP
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_uninstall = L1_1
return L0_1
