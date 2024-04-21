local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooBreedResultDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooBreedResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceZooModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = "ExitSpaceZooBreedResultDialog"
L4_1 = 1
L5_1 = "UIText_ActivitySpaceZoo_MainPage_LevelXX"
L6_1 = "UIText_ActivitySpaceZoo_ResultPage_Exp"
L7_1 = "UIText_ActivitySpaceZoo_ResultPage_TakePhoto"
L8_1 = "UIText_ActivitySpaceZoo_ResultPage_GoMission"
L9_1 = "UIText_ActivitySpaceZoo_ResultPage_GetCat"
L10_1 = CS
L10_1 = L10_1.RPG
L10_1 = L10_1.GameCore
L10_1 = L10_1.ItemRarity
L11_1 = {}
L12_1 = L10_1.Rare
L11_1[L12_1] = "SpaceZooResultPage_FadeIn_R3"
L12_1 = L10_1.VeryRare
L11_1[L12_1] = "SpaceZooResultPage_FadeIn_R4"
L12_1 = L10_1.SuperRare
L11_1[L12_1] = "SpaceZooResultPage_FadeIn_R5"
L12_1 = {}
L13_1 = L10_1.Rare
L12_1[L13_1] = "SpriteOutput/UI/Quest/SpaceZoo/SpaceZooResultBg.png"
L13_1 = L10_1.VeryRare
L12_1[L13_1] = "SpriteOutput/UI/Quest/SpaceZoo/SpaceZooResultBg2.png"
L13_1 = L10_1.SuperRare
L12_1[L13_1] = "SpriteOutput/UI/Quest/SpaceZoo/SpaceZooResultBg3.png"
L13_1 = CS
L13_1 = L13_1.RPG
L13_1 = L13_1.Client
L13_1 = L13_1.SpaceZooEXPChangeType
L14_1 = {}
L15_1 = L13_1.SpecialCat
L16_1 = L13_1.NewCat
L17_1 = L13_1.SpecialFeature
L18_1 = L13_1.Feature
L14_1[1] = L15_1
L14_1[2] = L16_1
L14_1[3] = L17_1
L14_1[4] = L18_1
L15_1 = "SpaceZooResultPage_LevelUp"
L16_1 = "9616"
L17_1 = 1
L18_1 = 0.7
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SpaceZooBreedResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "SpaceZoo_StartMissionBtn"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  A0_2._phase_submission_id_array = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.GetPageByName
  L3_2 = "SpaceZooMainPage"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UI3DUtilities
    L1_2 = L1_2.EnableHiZOC
    L2_2 = false
    L1_2(L2_2)
  end
end
L0_1.ctor = L19_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L1_1.SpaceZooData
  A0_2._space_zoo_data = L2_2
  A0_2._cat_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._init_cs_unlock_main_mission_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_exp_data
  L2_2(L3_2)
end
L0_1.init = L19_1
function L19_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rect_cat_icon
  L1_2 = L1_2.rect
  L2_2 = A0_2._binder
  L2_2 = L2_2.ui3d_panel
  L3_2 = L2_2
  L2_2 = L2_2.create_texture
  L4_2 = L1_2.width
  L5_2 = L1_2.height
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.raw_image_cat
  L3_2 = A0_2._binder
  L3_2 = L3_2.ui3d_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_texture
  L3_2 = L3_2(L4_2)
  L2_2.texture = L3_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_bg
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2._on_fill_anim_delay_finish
  L5_2 = L18_1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._fill_anim_delay_timer = L2_2
end
L0_1._on_load = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.GetPageByName
  L3_2 = "SpaceZooMainPage"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UI3DUtilities
    L1_2 = L1_2.EnableHiZOC
    L2_2 = true
    L1_2(L2_2)
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.trigger_custom_string
  L2_2 = L3_1
  L1_2(L2_2)
  L1_2 = A0_2._is_normal_exit
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.SpaceZooBreedResultHintFinish
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._space_zoo_data
  L2_2 = L1_2
  L1_2 = L1_2.GetEXP
  L3_2 = A0_2._cat_data
  L3_2 = L3_2.EXPCache
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cur_exp = L1_2
  L1_2 = A0_2._space_zoo_data
  L2_2 = L1_2
  L1_2 = L1_2.GetLevel
  L3_2 = A0_2._cat_data
  L3_2 = L3_2.EXPCache
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cur_level = L1_2
  L1_2 = A0_2._space_zoo_data
  L2_2 = L1_2
  L1_2 = L1_2.GetMaxEXP
  L3_2 = A0_2._cat_data
  L3_2 = L3_2.EXPCache
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cur_max_exp = L1_2
  L1_2 = A0_2._space_zoo_data
  L2_2 = L1_2
  L1_2 = L1_2.GetIsEXPMax
  L3_2 = A0_2._cat_data
  L3_2 = L3_2.EXPCache
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._cur_is_max_level = L1_2
  L1_2 = A0_2._cat_data
  L2_2 = L1_2
  L1_2 = L1_2.GetTotalEXPChange
  L1_2 = L1_2(L2_2)
  A0_2._exp_get = L1_2
  L1_2 = A0_2._cat_data
  L1_2 = L1_2.EXPCache
  L2_2 = A0_2._exp_get
  L1_2 = L1_2 - L2_2
  A0_2._last_total_exp = L1_2
  L1_2 = A0_2._space_zoo_data
  L2_2 = L1_2
  L1_2 = L1_2.GetEXP
  L3_2 = A0_2._last_total_exp
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._last_exp = L1_2
  L1_2 = A0_2._space_zoo_data
  L2_2 = L1_2
  L1_2 = L1_2.GetMaxEXP
  L3_2 = A0_2._last_total_exp
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._last_max_exp = L1_2
  L1_2 = A0_2._space_zoo_data
  L2_2 = L1_2
  L1_2 = L1_2.GetLevel
  L3_2 = A0_2._last_total_exp
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._last_level = L1_2
  L1_2 = A0_2._space_zoo_data
  L2_2 = L1_2
  L1_2 = L1_2.GetIsEXPMax
  L3_2 = A0_2._last_total_exp
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._last_is_max_level = L1_2
  L1_2 = A0_2._cur_level
  L2_2 = A0_2._last_level
  L1_2 = L1_2 > L2_2
  A0_2._is_level_up = L1_2
  L1_2 = A0_2._cur_exp
  L2_2 = A0_2._cur_max_exp
  L1_2 = L1_2 / L2_2
  A0_2._cur_progress = L1_2
  L1_2 = A0_2._last_exp
  L2_2 = A0_2._last_max_exp
  L1_2 = L1_2 / L2_2
  A0_2._last_progress = L1_2
end
L0_1._init_exp_data = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_ui3d
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_exp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_exp_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_confirm_desc
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_fade_in_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L17_1
  L4_2 = L17_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._cat_data
  L1_2 = L1_2.IsSpecial
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = L16_1
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._phase_submission_id_list = L1_2
  L1_2 = 0
  L2_2 = A0_2._phase_submission_id_array
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._phase_submission_id_array
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.UintValue
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._phase_submission_id_list
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_cs_unlock_main_mission_list = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._cat_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCatName
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_name = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ui3d_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_cat
  L3_2 = A0_2._cat_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_ui3d = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cat_data
  L1_2 = L1_2.IsSpecial
  if L1_2 then
    L1_2 = L2_1
    L2_2 = L1_2
    L1_2 = L1_2.GetSubMissionData
    L3_2 = A0_2._cat_data
    L3_2 = L3_2.SpecialCatRow
    L3_2 = L3_2.PhotoSubmissionID
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.IsStart
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.txt_confirm
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = L7_1
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_confirm_icon
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
        return
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_confirm_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._is_phase_submission_start
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._cat_data
    L1_2 = L1_2.IsTemplate
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_confirm
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L8_1
      L1_2(L2_2, L3_2)
      return
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L9_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_confirm_desc = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._phase_submission_id_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L2_1
    L7_2 = L6_2
    L6_2 = L6_2.GetSubMissionData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = L6_2.IsStart
      if L7_2 then
        L7_2 = true
        return L7_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._is_phase_submission_start = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_exp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._is_level_up
  if L3_2 then
    L3_2 = A0_2._last_max_exp
    if L3_2 then
      goto lbl_11
    end
  end
  L3_2 = A0_2._cur_exp
  ::lbl_11::
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_max_exp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._last_max_exp
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_phase
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L5_1
  L4_2 = A0_2._last_level
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._last_level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_exp_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L6_1
  L4_2 = A0_2._exp_get
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_exp_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._exp_get
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_exp_add_arrow
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_level_up
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_max_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._last_is_max_level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._last_is_max_level
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_progress
  L2_2 = A0_2._last_progress
  L1_2.fillAmount = L2_2
  L1_2 = A0_2._fill_anim_delay_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._fill_anim_delay_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L0_1._setup_exp = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._fill_anim_delay_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._is_level_up
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.fill_anim
    function L2_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_fill_end
      L0_3(L1_3)
    end
    L1_2.FillEndCallback = L2_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.fill_anim
    L1_2.FillEndCallback = nil
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.fill_anim
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2._last_progress
  L4_2 = A0_2._is_level_up
  if L4_2 then
    L4_2 = 1
    if L4_2 then
      goto lbl_26
    end
  end
  L4_2 = A0_2._cur_progress
  ::lbl_26::
  L5_2 = L4_1
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_fill_anim_delay_finish = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = L14_1
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._cat_data
    L8_2 = L7_2
    L7_2 = L7_2.GetEXPChangeCache
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if 0 < L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.exp_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = A0_2._cat_data
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_exp_list = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_title
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L15_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.fill_anim
  L1_2.FillEndCallback = nil
  L1_2 = A0_2._cur_is_max_level
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.fill_anim
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = 0
    L4_2 = A0_2._cur_progress
    L5_2 = L4_1
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_exp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_exp
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_max_exp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_max_exp
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_phase
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L5_1
  L4_2 = A0_2._cur_level
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._cur_level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_max_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_is_max_level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_is_max_level
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._on_fill_end = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = A0_2._cat_data
  L3_2 = L3_2.Rarity
  L3_2 = L11_1[L3_2]
  L1_2(L2_2, L3_2)
end
L0_1._play_fade_in_anim = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ui3d_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_bg
  L3_2 = A0_2._cat_data
  L3_2 = L3_2.Rarity
  L3_2 = L12_1[L3_2]
  L1_2(L2_2, L3_2)
end
L0_1._setup_bg = L19_1
function L19_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L19_1
function L19_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  A0_2._is_normal_exit = true
end
L0_1._on_btn_close = L19_1
return L0_1
