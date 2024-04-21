local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.UI3DCameraPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaCutscene3DPage"
L2_1 = G
L2_1 = L2_1.UI3DController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.GachaModule
function L2_1(A0_2)
  local L1_2
  L1_2 = L1_1.CurrentDrawInfo
  L1_2 = L1_2.MaxRarity
  L1_2 = #L1_2
  if L1_2 == 5 then
    L1_2 = A0_2.config
    L1_2.prefab_path = "CutSceneSpecial/CS_ChapGacha_Act020/CS_ChapGacha_Act020.prefab"
  else
    L1_2 = A0_2.config
    L1_2.prefab_path = "CutSceneSpecial/CS_ChapGacha_Act010/CS_ChapGacha_Act010.prefab"
  end
  L1_2 = A0_2.config
  L1_2.is_async_load = false
  L1_2 = A0_2.config
  L1_2.use_screen_transfer = true
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigManager
  L1_2 = L1_2.GachaCutsceneConfig
  A0_2._cutscene_config = L1_2
  L1_2 = A0_2.config
  L2_2 = A0_2._cutscene_config
  L2_2 = L2_2.EnviroProfile
  L1_2.environment_profile_path = L2_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.UI3DCameraPanel
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._camera_panel = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._cutscene_config = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._setup_view = L2_1
return L0_1
