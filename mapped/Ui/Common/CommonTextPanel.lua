local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonTextPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonTextPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1.SafeGetCmpt
  L3_2 = typeof
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.Text
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L5_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2.text = L2_2
end
L0_1.find_text_cmpt = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.text
  if L3_2 == nil then
    return
  end
  if A2_2 == nil then
    L3_2 = A0_2.text
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2.text
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A1_2
    L6_2 = table
    L6_2 = L6_2.unpack
    L7_2 = A2_2
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1.setup_text = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  L3_2.path = A0_2
  L3_2.text_id = A1_2
  L3_2.text_param_table = A2_2
  return L3_2
end
L0_1.create_param_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.find_text_cmpt
  L4_2 = A1_2.path
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_text
  L4_2 = A1_2.text_id
  L5_2 = A1_2.text_param_table
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L2_1
return L0_1
