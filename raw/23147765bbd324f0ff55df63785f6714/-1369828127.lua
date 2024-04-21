local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.AvatarTrial.AvatarNormalTrialPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.ActivityAvatarInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPanel.ActivityAvatarInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaTrial.GachaNormalTrialRewardPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaTrial.GachaNormalTrialRewardPanelBinder"
L0_1(L1_1)
L0_1 = "UIText_TitleType_Slash"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RoleTrialModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "AvatarNormalTrialPage"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AvatarNormalTrialPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._avatar_data = A1_2
  L2_2 = A1_2.ID
  A0_2._avatar_id = L2_2
  L2_2 = A1_2.RealID
  A0_2._avatar_real_id = L2_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetRoleTrialEntranceData
  L4_2 = A0_2._avatar_real_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._entrance_data = L2_2
  L2_2 = A0_2._entrance_data
  L2_2 = L2_2.StageID
  A0_2._stage_id = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarDemoConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._stage_id
  L2_2 = L2_2(L3_2)
  A0_2._stage_row = L2_2
end
L2_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_goto_trial
  L4_2 = A0_2._on_btn_trial
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityGetReward
  L4_2 = A0_2._on_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ActivityAvatarInfoPanel
  L4_2 = G
  L4_2 = L4_2.ActivityAvatarInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._avatar_info_panel = L1_2
  L1_2 = A0_2._avatar_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_avatar_info_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.GachaNormalTrialRewardPanel
  L4_2 = G
  L4_2 = L4_2.GachaNormalTrialRewardPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._reward_panel = L1_2
  L1_2 = A0_2._reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reward_panel
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportAvatarNormalTrialOpen
  L2_2 = A0_2.__name
  L3_2 = A0_2._avatar_real_id
  L1_2(L2_2, L3_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.SetAutoShowNormalAvatarID
    L4_2 = A0_2._avatar_id
    L2_2(L3_2, L4_2)
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.StartRoleTrial
    L4_2 = A0_2._stage_id
    L2_2(L3_2, L4_2)
  end
end
L2_1._on_btn_trial = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if nil ~= A1_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Common.RewardDialog"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_reward_view
    L2_2(L3_2)
  end
end
L2_1._on_get_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.AvatarBaseType
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.BaseTypeIconSmall
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_profession_type
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_avatar_type_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L0_1
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = L1_2.BaseTypeText
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2._avatar_data
  L7_2 = L7_2.AvatarName
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._avatar_info_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._avatar_real_id
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._reward_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._stage_row
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_img
  L3_2(L4_2)
end
L2_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_img_path
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_bg
  L4_2 = A0_2._bg_path
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_avatar
  L4_2 = A0_2._avatar_path
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_avatar_back
  L4_2 = A0_2._back_path
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_avatar_front
  L4_2 = A0_2._front_path
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._refresh_img = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._stage_row
  L1_2 = L1_2.AvatarBackgroundPath
  A0_2._bg_path = L1_2
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._entrance_data
  L2_2 = L2_2.RoleTrialAvatarPath
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._entrance_data
    L1_2 = L1_2.RoleTrialAvatarPath
    A0_2._avatar_path = L1_2
  else
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2._bg_path
    L3_2 = "TrialRoleBg_"
    L4_2 = "TrialRoleAvatar_"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._avatar_path = L1_2
  end
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._entrance_data
  L2_2 = L2_2.RoleTrialAvatarBackPath
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._entrance_data
    L1_2 = L1_2.RoleTrialAvatarBackPath
    A0_2._back_path = L1_2
  else
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2._avatar_path
    L3_2 = ".png"
    L4_2 = "_Back.png"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._back_path = L1_2
  end
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._entrance_data
  L2_2 = L2_2.RoleTrialAvatarFrontPath
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._entrance_data
    L1_2 = L1_2.RoleTrialAvatarFrontPath
    A0_2._front_path = L1_2
  else
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2._avatar_path
    L3_2 = ".png"
    L4_2 = "_Front.png"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._front_path = L1_2
  end
end
L2_1._get_img_path = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._stage_row
  L1_2(L2_2, L3_2)
end
L2_1._refresh_reward_view = L3_1
return L2_1
