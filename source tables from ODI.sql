select

SP.I_POP,

SPC.I_POP_COL,

SC.I_COL,

STC.I_TXT,

SC2.i_col i_col2,

SST.i_table,

SP.pop_name ODI_INTERFACE_NAME,

SPC.col_name  TARGET_COL_NAME,

SC.COL_NAME  TARGET_COL_NAME2, --is still target name!!!

SP.TABLE_NAME TARGET_TABLE_NAME,

SC2.COL_NAME SOURCE_COL_NAME, --this is source column name!!!

STC.TAB_ALIAS SOURCE_TABLE_ALIAS,

SST.TABLE_NAME SOURCE_TABLE_NAME --this is source table name!!!

from snp_pop SP,

   snp_pop_col SPC,

   snp_col SC,

   SNP_POP_MAPPING SPM,

   snp_txt_crossr STC,

   snp_col SC2,

   SNP_source_tab SST

where

SP.I_POP=SPC.I_POP

and SPC.I_COL=SC.I_COL

and SPC.I_POP_COL=SPM.I_POP_COL

and SPM.i_txt_map=STC.I_TXT

and STC.i_col=SC2.i_col

and SC2.i_table=SST.i_table

and SP.TABLE_NAME like '%WC_UNIFIER_DRCT_FLD_COST_F'; --change for the table name
