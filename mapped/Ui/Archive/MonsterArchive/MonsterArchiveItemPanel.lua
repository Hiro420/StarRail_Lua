local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterArchiveItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ArchiveModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
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
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._entry = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._try_bind_red_dot
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MonsterArchive"
  L4_2 = A0_2._entry
  L4_2 = L4_2.RedDotKey
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_red_dot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._try_bind_red_dot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_monster
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._entry
  L3_2 = L3_2.IsUnlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.elite_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._entry
  L3_2 = L3_2.IsUnlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._entry
  L3_2 = L3_2.IsUnlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_node = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._entry
  L1_2 = L1_2.IsUnlock
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._entry
    L3_2 = L3_2.Row
    L3_2 = L3_2.MonsterName
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_monster
    L4_2 = A0_2._entry
    L4_2 = L4_2.Row
    L4_2 = L4_2.ManikinImagePath
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.elite_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._entry
    L3_2 = L3_2.Row
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = L1_1.ArchiveLockName
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._entry
  L1_2 = L1_2.IsUnlock
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_MonsterAtlas_NotObtained"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L4_2 = A0_2._entry
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_root = L2_1
return L0_1
