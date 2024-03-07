local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyServerRewardBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyBuffOverviewBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyBuffOverviewBtnPanelHudBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyCheatDiceBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyRollDiceBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyRollResultPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyEventOverviewBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyHistoryBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyHistoryBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyUI2DEffectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyAssetOverviewBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyAssetOverviewBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyCurrencyPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyCurrencyPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyVirtualCursorPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyChooseDirectionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyChooseDirectionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyPlayerIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MainPage.Components.ActivityMonopolyPlayerIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyMainPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.ActivityMonopolyMainPageIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Monopoly/MonopolyGameplayPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "[%s] auto bind fail"
    L3_2 = A0_2.__name
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/FunctionPanel/BtnFriend/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_friend_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/FunctionPanel/BtnReport/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_report_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/PanelContent/FunctionPanel/BtnReward/Root/RedDot"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_reward_reddot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/PanelContent/FunctionPanel/BtnReward"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_reward = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panels
  L1_2(L2_2)
end
L0_1._on_bind = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyServerRewardBtnPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyServerRewardBtnPanelBinder
  L5_2 = A0_2.server_reward_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.server_reward_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyBuffOverviewBtnPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyBuffOverviewBtnPanelHudBinder
  L5_2 = A0_2.buff_btn_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.buff_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyEventOverviewBtnPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyEventOverviewBtnPanelBinder
  L5_2 = A0_2.event_btn_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.event_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyRollDiceBtnPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyRollDiceBtnPanelBinder
  L5_2 = A0_2.roll_dice_btn_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.roll_dice_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyCheatDiceBtnPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyRollDiceBtnPanelBinder
  L5_2 = A0_2.roll_cheat_dice_btn_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.roll_cheat_dice_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyRollResultPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyRollResultPanelBinder
  L5_2 = A0_2.roll_dice_result_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.roll_dice_result_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyHistoryBtnPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyHistoryBtnPanelBinder
  L5_2 = A0_2.report_btn
  L5_2 = L5_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.history_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyUI2DEffectPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyUI2DEffectPanelBinder
  L5_2 = A0_2.effect_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.effect_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyAssetOverviewBtnPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyAssetOverviewBtnPanelBinder
  L5_2 = A0_2.asset_btn_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.asset_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyCurrencyPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyCurrencyPanelBinder
  L5_2 = A0_2.currency_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.currency_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyVirtualCursorPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyVirtualCursorPanelBinder
  L5_2 = A0_2.virtual_cursor_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.virtual_cursor_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyChooseDirectionPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyChooseDirectionPanelBinder
  L5_2 = A0_2.choose_direction_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.choose_direction_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyPlayerIconPanel
  L4_2 = G
  L4_2 = L4_2.ActivityMonopolyPlayerIconPanelBinder
  L5_2 = A0_2.player_icon_root
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.player_icon_panel = L1_2
end
L0_1._create_panels = L2_1
return L0_1
