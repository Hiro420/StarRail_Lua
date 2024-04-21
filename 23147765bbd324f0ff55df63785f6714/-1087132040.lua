local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubMissionPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubMonsterIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubMonsterIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubMissionPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_BoxingClub_Challenge_PlayerTeamName"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.BoxingClubModule
L3_1 = 8001
L4_1 = 8002
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BoxingClubMissionPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_animation_event_str_notify
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2.monster_panel = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_monster
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.BoxingClubMonsterIconPanel
    L9_2 = G
    L9_2 = L9_2.BoxingClubMonsterIconPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.monster_panel
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetPerformanceConfig
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2.data = L2_2
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  A0_2.config = A1_2
  L2_2 = A1_2.FistIndex
  A0_2.index = L2_2
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_monster_bubble
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_player_bubble
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.data
  L2_2 = A0_2.index
  L1_2 = L1_2[L2_2]
  A0_2.current_data = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_round
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.index
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_player
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_monster
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_monster_icons
  L1_2(L2_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ipairs
  L2_2 = A0_2.monster_panel
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L8_2 = A0_2.data
    L8_2 = L8_2[L4_2]
    L8_2 = L8_2.MonsterTemplateID
    L9_2 = L4_2
    L10_2 = A0_2.index
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1.setup_monster_icons = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.NickName
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_player_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_1
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_player_bubble
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2.current_data
  L4_2 = L4_2.BubbleTalkPlayer
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_player_figure
  L2_2(L3_2)
end
L0_1.setup_player = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_monster_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.current_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_monster_bubble
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.current_data
  L3_2 = L3_2.BubbleTalkEnemy
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MonsterTemplateExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.current_data
  L2_2 = L2_2.MonsterTemplateID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.image_monster
  L5_2 = L1_2.ImagePath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_monster = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PlayerModule
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.HeroAvatarInfoData
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentHeroGender
  L1_2 = L1_2(L2_2)
  L2_2 = L4_1
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GenderType
  L3_2 = L3_2.GENDER_MAN
  if L1_2 == L3_2 then
    L2_2 = L3_1
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2.load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.image_player
    L7_2 = L3_2.AvatarCutinImgPath
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._setup_player_figure = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.config
  L1_2.FistResult = true
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_confirm = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.config
  L1_2.FistResult = false
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == "BoxingClub_First_Fade_In" then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_monster_bubble
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_player_bubble
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.ani_talk
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "QuestFistClubPaperPage_Talk"
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_animation_event_str_notify = L5_1
return L0_1
