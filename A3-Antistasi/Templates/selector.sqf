/*
    This file controls the selection of templates based on the mods loaded and map used.
    When porting new mods/maps be sure to add them to their respective sections!
*/

//Map checker
aridmaps = ["Altis","Kunduz","Malden","tem_anizay"];
tropicalmaps = ["Tanoa"];
temperatemaps = ["Enoch","chernarus_summer","vt7","Tembelan"];
arcticmaps = ["Chernarus_Winter"];

//Map selector - Only Altis available     3CB and RHS Required
 switch(true) do{
    case (has3CB): {
      //Main Case 
	  switch(true) do {
        case (worldName in arcticmaps): {
          call compile preProcessFileLineNumbers "Templates\3CB_Reb_BAF_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Occ_CDF_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Inv_AFRF_Arid.sqf";
        };
        case (worldName in temperatemaps): {
          call compile preProcessFileLineNumbers "Templates\3CB_Reb_BAF_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Occ_CDF_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Inv_AFRF_Arid.sqf";
        };
        case (worldName in tropicalmaps): {
          call compile preProcessFileLineNumbers "Templates\3CB_Reb_BAF_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Occ_CDF_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Inv_AFRF_Arid.sqf";
        };
        default {
          call compile preProcessFileLineNumbers "Templates\3CB_Reb_BAF_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Occ_CDF_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\3CB_Inv_AFRF_Arid.sqf";
        };
      };
      call compile preProcessFileLineNumbers "Templates\RHS_Civ.sqf";
    };
	// NO IFA SUPPORT YET
    /* case (hasIFA): {
      switch(true) do {
        case (worldName in arcticmaps): {
          call compile preProcessFileLineNumbers "Templates\IFA_Reb_POL_Arct.sqf";
          call compile preProcessFileLineNumbers "Templates\IFA_Inv_SOV_Arct.sqf";
          call compile preProcessFileLineNumbers "Templates\IFA_Occ_WEH_Arct.sqf";
        };
        case (worldName in temperatemaps): {
          call compile preProcessFileLineNumbers "Templates\IFA_Reb_POL_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\IFA_Inv_SOV_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\IFA_Occ_WEH_Temp.sqf";
        };
        case (worldName in tropicalmaps): {
          call compile preProcessFileLineNumbers "Templates\IFA_Reb_POL_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\IFA_Inv_SOV_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\IFA_Occ_WEH_Temp.sqf";
        };
        default {
          call compile preProcessFileLineNumbers "Templates\IFA_Reb_POL_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\IFA_Inv_SOV_Arid.sqf";
          call compile preProcessFileLineNumbers "Templates\IFA_Occ_WEH_Arid.sqf";
        };
      };
      call compile preProcessFileLineNumbers "Templates\IFA_Civ.sqf";
    }; */
    default {
      switch(true) do {//This one (vanilla) works differently so that we don't get DLC kit on modded maps.
        case (worldName == "Enoch"): {
          call compile preProcessFileLineNumbers "Templates\Vanilla_Reb_FIA_Enoch.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Occ_NATO_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Inv_CSAT_Enoch.sqf";
        };
        case (worldName == "Tanoa"): {
          call compile preProcessFileLineNumbers "Templates\Vanilla_Reb_SDK_Tanoa.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Occ_NATO_Tanoa.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Inv_CSAT_Tanoa.sqf";
        };
        case (worldName in temperatemaps): {
          call compile preProcessFileLineNumbers "Templates\Vanilla_Reb_FIA_Altis.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Occ_NATO_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Inv_CSAT_Altis.sqf";
        };
        default {
          call compile preProcessFileLineNumbers "Templates\Vanilla_Reb_FIA_Altis.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Occ_NATO_Altis.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla_Inv_CSAT_Altis.sqf";
        };
      };
      call compile preProcessFileLineNumbers "Templates\Vanilla_Civ.sqf";
    };
  };
