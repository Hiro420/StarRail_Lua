local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NetStatusPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/NetStatus/NetStatusPanel.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.DiscreteBar
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bar_signal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Connected/Time"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "NoConnected"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.disconnect_mark = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Connected"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.connected_mark = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AppUtils
  L1_2 = L1_2.IsCloudPlatform
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_bind = L1_1
return L0_1
