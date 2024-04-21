local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.AvatarRelicContainer"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.AvatarRelicContainerBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.AvatarRelicSetDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.AvatarRelicSetDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarRelicPanelTabItemBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Avatar/Relic/Widget/AvatarRelicPanel.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "PageInfo/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.sub_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "PageInfo/TitleType/ExtraContent/ProfessionalIcon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_avatar_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarRelicSetDetailPanel/RelicInfoPanel/FunctionPanel/BtnUnistall"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_uninstall = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarRelicContainer
  L4_2 = G
  L4_2 = L4_2.AvatarRelicContainerBinder
  L5_2 = "AvatarRelicContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.relic_container = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarRelicSetDetailPanel
  L4_2 = G
  L4_2 = L4_2.AvatarRelicSetDetailPanelBinder
  L5_2 = "AvatarRelicSetDetailPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.relic_set_detail = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt_in_btn
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Transform
  L4_2 = "RedDot"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.go_reddot = L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
