local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Achievement.AchievementHintDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AchievementHintDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.AchievementSeriesExcelTable
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AchievementHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2.block_when_async_load = false
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StoryModeChange
  L4_2 = A0_2._on_story_mode_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageContext
  L4_2 = A0_2._on_show_ui_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAchievementToastClose
  L4_2 = A0_2._on_close
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2.data = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = 3
  end
  A0_2.time = L3_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_view
  L3_2 = A0_2.data
  L1_2(L2_2, L3_2)
  A0_2.current_time = 0
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.ScoringId
  if L2_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.AchievementModule
    L3_2 = L2_2
    L2_2 = L2_2.GetAchievementDataByScoringID
    L4_2 = A1_2.ScoringId
    L2_2 = L2_2(L3_2, L4_2)
    A1_2 = L2_2
  end
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.title_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Row
  L4_2 = L4_2.AchievementTitle
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_rarity_image
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_rarity
  L5_2 = A0_2._rarity_icon
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.current_time
  L2_2 = L2_2 + A1_2
  A0_2.current_time = L2_2
  L2_2 = A0_2.current_time
  L3_2 = A0_2.time
  if L2_2 > L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.remove_tick
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L0_1._on_tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L2_2 = A0_2.data
  L2_2 = L2_2.ScoringId
  if L2_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.AchievementModule
    L3_2 = L2_2
    L2_2 = L2_2.GetAchievementDataByScoringID
    L4_2 = A0_2.data
    L4_2 = L4_2.ScoringId
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  else
    L1_2 = A0_2.data
  end
  L2_2 = L1_1.GetData
  L3_2 = L1_2.SeriesID
  L2_2 = L2_2(L3_2)
  L3_2 = L1_2.Row
  L3_2 = L3_2.Rarity
  if L3_2 == "Low" then
    L4_2 = L2_2.CopperIconPath
    A0_2._rarity_icon = L4_2
  elseif L3_2 == "Mid" then
    L4_2 = L2_2.SilverIconPath
    A0_2._rarity_icon = L4_2
  elseif L3_2 == "High" then
    L4_2 = L2_2.GoldIconPath
    A0_2._rarity_icon = L4_2
  end
end
L0_1._get_rarity_image = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= nil then
    L2_2 = A0_2._is_ignore_show_ui_page
    L3_2 = A1_2.Name
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_10
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_close
  L2_2(L3_2)
  ::lbl_10::
end
L0_1._on_show_ui_page = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2 == "TalkDialog" or A0_2 == "ChessRogueBoardPage" or A0_2 == "ChessRogueAdventureRoomSettlePanel"
  return L1_2
end
L0_1._is_ignore_show_ui_page = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == true then
    L3_2 = A0_2
    L2_2 = A0_2._on_close
    L2_2(L3_2)
  end
end
L0_1._on_story_mode_change = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_close = L2_1
return L0_1
