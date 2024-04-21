local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.RewardDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonsterResearchSubmitRewardPage"
L2_1 = G
L2_1 = L2_1.RewardDialog
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RewardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._reward_item_table = L1_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = G
  L6_2 = L6_2.RewardUtils
  L6_2 = L6_2.get_reward_table_without_avatar
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L7_2 = G
  L7_2 = L7_2.RewardUtils
  L7_2 = L7_2.get_unique_sorted_reward_table
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  A0_2._reward_item_table = L7_2
  A0_2._title_textid = A2_2
  A0_2._hide_num = A3_2
  L8_2 = A0_2
  L7_2 = A0_2._init_config_ids
  L7_2(L8_2)
  A0_2._research_id = A4_2
  A0_2._question_id = A5_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._trigger_progress
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._trigger_progress
  L1_2(L2_2)
end
L0_1._on_btn_confirm = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._trigger_progress
  L1_2(L2_2)
end
L0_1._on_bg_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.MonsterResearchSubmitProgressFinish
  L3_2 = A0_2._question_id
  L1_2(L2_2, L3_2)
end
L0_1._trigger_progress = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._trigger_autouse_item
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.ToastModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.pasue_toast
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L1_1
return L0_1
