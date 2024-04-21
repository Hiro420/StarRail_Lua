local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.OfferingRewardItemIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "OfferingRewardItemPanelBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Shop/Widget/WorldOfferingRewardListInfoRow.prefab"
  return L1_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BinderIndex
  L1_2 = L1_2.BinderIndexOpen
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.auto_bind
    L3_2 = L0_1
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._create_panel_with_root_trans
      L3_2 = G
      L3_2 = L3_2.CommonRewardListPanel
      L4_2 = G
      L4_2 = L4_2.CommonRewardListPanelBinder
      L5_2 = A0_2.node_root
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      A0_2.panel_reward = L1_2
      return
    end
  end
  A0_2.btn_root = nil
  A0_2.btn_get = nil
  A0_2.text_level = nil
  A0_2.text_recycle_num = nil
  A0_2.text_recycle_title = nil
  A0_2.text_recycle_desc = nil
  A0_2.text_recycle_detail_num = nil
  A0_2.img_progress = nil
  A0_2.incontrol_tip_get = nil
  A0_2.anim_unlock = nil
  A0_2.node_got = nil
  A0_2.node_key_map_zoom = nil
  A0_2.node_doing = nil
  A0_2.node_normal = nil
  A0_2.node_rare = nil
  A0_2.node_recycle_num = nil
  A0_2.node_recycle = nil
  A0_2.node_recycle_detail = nil
  A0_2.node_level = nil
  A0_2.node_root = nil
  A0_2.node_mask = nil
  A0_2.node_btn_get = nil
end
L1_1._on_bind = L2_1
return L1_1
