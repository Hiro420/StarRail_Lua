local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeLockPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._btn_root_onclick
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._equip_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_lightcone_lock_statu
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.ItemChanged
  L5_2 = A0_2._refresh_lightcone_lock_statu
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L2_2 = L1_2
  L1_2 = L1_2.GNDAKNGKKEC
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.UID
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.IsProtected
  L4_2 = not L4_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.GAGJAJPBGDP
  L1_2(L2_2, L3_2)
end
L0_1._btn_root_onclick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.IsProtected
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.IsProtected
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_lightcone_lock_statu = L2_1
return L0_1
