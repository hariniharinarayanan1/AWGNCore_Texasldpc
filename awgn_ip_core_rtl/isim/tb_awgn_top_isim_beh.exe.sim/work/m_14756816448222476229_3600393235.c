/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/eng/h/hxh141130/awgn_ip_core/lzd48.v";
static int ng1[] = {3, 0};
static int ng2[] = {0, 0};
static int ng3[] = {2, 0};
static int ng4[] = {1, 0};



static void Always_70_0(char *t0)
{
    char t7[8];
    char t35[8];
    char t40[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;

LAB0:    t1 = (t0 + 3160U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3480);
    *((int *)t2) = 1;
    t3 = (t0 + 3192);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(71, ng0);

LAB5:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t0 + 1688U);
    t6 = *((char **)t4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t6);
    t10 = (t8 | t9);
    *((unsigned int *)t7) = t10;
    t4 = (t5 + 4);
    t11 = (t6 + 4);
    t12 = (t7 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t11);
    t15 = (t13 | t14);
    *((unsigned int *)t12) = t15;
    t16 = *((unsigned int *)t12);
    t17 = (t16 != 0);
    if (t17 == 1)
        goto LAB6;

LAB7:
LAB8:    t34 = (t0 + 2248);
    xsi_vlogvar_assign_value(t34, t7, 0, 0, 1);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t13 = (t10 & t9);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB12;

LAB10:    if (*((unsigned int *)t2) == 0)
        goto LAB9;

LAB11:    t4 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t4) = 1;

LAB12:    t5 = (t7 + 4);
    t6 = (t3 + 4);
    t15 = *((unsigned int *)t3);
    t16 = (~(t15));
    *((unsigned int *)t7) = t16;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t6) != 0)
        goto LAB14;

LAB13:    t23 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t23 & 1U);
    t24 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t24 & 1U);
    t11 = (t0 + 2088);
    t12 = (t0 + 2088);
    t20 = (t12 + 72U);
    t21 = *((char **)t20);
    t34 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t35, t21, 2, t34, 32, 1);
    t36 = (t35 + 4);
    t26 = *((unsigned int *)t36);
    t25 = (!(t26));
    if (t25 == 1)
        goto LAB15;

LAB16:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t7, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t5);
    t15 = (t13 ^ t14);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 | t18);
    t22 = (~(t19));
    t23 = (t16 & t22);
    if (t23 != 0)
        goto LAB20;

LAB17:    if (t19 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t7) = 1;

LAB20:    t11 = (t7 + 4);
    t24 = *((unsigned int *)t11);
    t26 = (~(t24));
    t27 = *((unsigned int *)t7);
    t28 = (t27 & t26);
    t30 = (t28 != 0);
    if (t30 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(80, ng0);

LAB31:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 2);
    t10 = (t9 & 1);
    *((unsigned int *)t7) = t10;
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 2);
    t15 = (t14 & 1);
    *((unsigned int *)t2) = t15;
    t5 = (t0 + 2088);
    t6 = (t0 + 2088);
    t11 = (t6 + 72U);
    t12 = *((char **)t11);
    t20 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t35, t12, 2, t20, 32, 1);
    t21 = (t35 + 4);
    t16 = *((unsigned int *)t21);
    t25 = (!(t16));
    if (t25 == 1)
        goto LAB32;

LAB33:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 1);
    t10 = (t9 & 1);
    *((unsigned int *)t7) = t10;
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 1);
    t15 = (t14 & 1);
    *((unsigned int *)t2) = t15;
    t5 = (t0 + 2088);
    t6 = (t0 + 2088);
    t11 = (t6 + 72U);
    t12 = *((char **)t11);
    t20 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t35, t12, 2, t20, 32, 1);
    t21 = (t35 + 4);
    t16 = *((unsigned int *)t21);
    t25 = (!(t16));
    if (t25 == 1)
        goto LAB34;

LAB35:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 0);
    t10 = (t9 & 1);
    *((unsigned int *)t7) = t10;
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 0);
    t15 = (t14 & 1);
    *((unsigned int *)t2) = t15;
    t5 = (t0 + 2088);
    t6 = (t0 + 2088);
    t11 = (t6 + 72U);
    t12 = *((char **)t11);
    t20 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t35, t12, 2, t20, 32, 1);
    t21 = (t35 + 4);
    t16 = *((unsigned int *)t21);
    t25 = (!(t16));
    if (t25 == 1)
        goto LAB36;

LAB37:
LAB23:    goto LAB2;

LAB6:    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t7) = (t18 | t19);
    t20 = (t5 + 4);
    t21 = (t6 + 4);
    t22 = *((unsigned int *)t20);
    t23 = (~(t22));
    t24 = *((unsigned int *)t5);
    t25 = (t24 & t23);
    t26 = *((unsigned int *)t21);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (~(t25));
    t31 = (~(t29));
    t32 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t32 & t30);
    t33 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t33 & t31);
    goto LAB8;

LAB9:    *((unsigned int *)t7) = 1;
    goto LAB12;

LAB14:    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t6);
    *((unsigned int *)t7) = (t17 | t18);
    t19 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t6);
    *((unsigned int *)t5) = (t19 | t22);
    goto LAB13;

LAB15:    xsi_vlogvar_assign_value(t11, t7, 0, *((unsigned int *)t35), 1);
    goto LAB16;

LAB19:    t6 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB20;

LAB21:    xsi_set_current_line(76, ng0);

LAB24:    xsi_set_current_line(76, ng0);
    t12 = (t0 + 1208U);
    t20 = *((char **)t12);
    memset(t35, 0, 8);
    t12 = (t35 + 4);
    t21 = (t20 + 4);
    t31 = *((unsigned int *)t20);
    t32 = (t31 >> 2);
    t33 = (t32 & 1);
    *((unsigned int *)t35) = t33;
    t37 = *((unsigned int *)t21);
    t38 = (t37 >> 2);
    t39 = (t38 & 1);
    *((unsigned int *)t12) = t39;
    t34 = (t0 + 2088);
    t36 = (t0 + 2088);
    t41 = (t36 + 72U);
    t42 = *((char **)t41);
    t43 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t40, t42, 2, t43, 32, 1);
    t44 = (t40 + 4);
    t45 = *((unsigned int *)t44);
    t25 = (!(t45));
    if (t25 == 1)
        goto LAB25;

LAB26:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 1);
    t10 = (t9 & 1);
    *((unsigned int *)t7) = t10;
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 1);
    t15 = (t14 & 1);
    *((unsigned int *)t2) = t15;
    t5 = (t0 + 2088);
    t6 = (t0 + 2088);
    t11 = (t6 + 72U);
    t12 = *((char **)t11);
    t20 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t35, t12, 2, t20, 32, 1);
    t21 = (t35 + 4);
    t16 = *((unsigned int *)t21);
    t25 = (!(t16));
    if (t25 == 1)
        goto LAB27;

LAB28:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t7 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 0);
    t10 = (t9 & 1);
    *((unsigned int *)t7) = t10;
    t13 = *((unsigned int *)t4);
    t14 = (t13 >> 0);
    t15 = (t14 & 1);
    *((unsigned int *)t2) = t15;
    t5 = (t0 + 2088);
    t6 = (t0 + 2088);
    t11 = (t6 + 72U);
    t12 = *((char **)t11);
    t20 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t35, t12, 2, t20, 32, 1);
    t21 = (t35 + 4);
    t16 = *((unsigned int *)t21);
    t25 = (!(t16));
    if (t25 == 1)
        goto LAB29;

LAB30:    goto LAB23;

LAB25:    xsi_vlogvar_assign_value(t34, t35, 0, *((unsigned int *)t40), 1);
    goto LAB26;

LAB27:    xsi_vlogvar_assign_value(t5, t7, 0, *((unsigned int *)t35), 1);
    goto LAB28;

LAB29:    xsi_vlogvar_assign_value(t5, t7, 0, *((unsigned int *)t35), 1);
    goto LAB30;

LAB32:    xsi_vlogvar_assign_value(t5, t7, 0, *((unsigned int *)t35), 1);
    goto LAB33;

LAB34:    xsi_vlogvar_assign_value(t5, t7, 0, *((unsigned int *)t35), 1);
    goto LAB35;

LAB36:    xsi_vlogvar_assign_value(t5, t7, 0, *((unsigned int *)t35), 1);
    goto LAB37;

}


extern void work_m_14756816448222476229_3600393235_init()
{
	static char *pe[] = {(void *)Always_70_0};
	xsi_register_didat("work_m_14756816448222476229_3600393235", "isim/tb_awgn_top_isim_beh.exe.sim/work/m_14756816448222476229_3600393235.didat");
	xsi_register_executes(pe);
}
