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
static const char *ng0 = "/home/eng/h/hxh141130/awgn_ip_core/shifters.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static int ng3[] = {44, 0};
static int ng4[] = {4, 0};
static unsigned int ng5[] = {0U, 0U};
static int ng6[] = {3, 0};



static void Always_90_0(char *t0)
{
    char t6[8];
    char t30[8];
    char t34[8];
    char t42[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t43;
    int t44;
    int t45;
    int t46;
    int t47;
    int t48;
    int t49;
    int t50;
    int t51;

LAB0:    t1 = (t0 + 2680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 3000);
    *((int *)t2) = 1;
    t3 = (t0 + 2712);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(91, ng0);

LAB5:    xsi_set_current_line(93, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1608);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 48);

LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(94, ng0);

LAB13:    xsi_set_current_line(95, ng0);
    xsi_set_current_line(95, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1768);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 32);

LAB14:    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1608);
    t4 = (t0 + 1608);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng6)));
    t21 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t6, t30, t34, ((int*)(t7)), 2, t8, 32, 1, t21, 32, 1);
    t22 = (t6 + 4);
    t9 = *((unsigned int *)t22);
    t44 = (!(t9));
    t28 = (t30 + 4);
    t10 = *((unsigned int *)t28);
    t45 = (!(t10));
    t46 = (t44 && t45);
    t29 = (t34 + 4);
    t11 = *((unsigned int *)t29);
    t47 = (!(t11));
    t48 = (t46 && t47);
    if (t48 == 1)
        goto LAB19;

LAB20:    goto LAB12;

LAB15:    xsi_set_current_line(96, ng0);
    t8 = (t0 + 1048U);
    t21 = *((char **)t8);
    t8 = (t0 + 1008U);
    t22 = (t8 + 72U);
    t28 = *((char **)t22);
    t29 = (t0 + 1768);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    xsi_vlog_generic_get_index_select_value(t30, 1, t21, t28, 2, t32, 32, 1);
    t33 = (t0 + 1608);
    t35 = (t0 + 1608);
    t36 = (t35 + 72U);
    t37 = *((char **)t36);
    t38 = (t0 + 1768);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = ((char*)((ng4)));
    memset(t42, 0, 8);
    xsi_vlog_signed_add(t42, 32, t40, 32, t41, 32);
    xsi_vlog_generic_convert_bit_index(t34, t37, 2, t42, 32, 1);
    t43 = (t34 + 4);
    t14 = *((unsigned int *)t43);
    t44 = (!(t14));
    if (t44 == 1)
        goto LAB17;

LAB18:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB14;

LAB17:    xsi_vlogvar_assign_value(t33, t30, 0, *((unsigned int *)t34), 1);
    goto LAB18;

LAB19:    t12 = *((unsigned int *)t34);
    t49 = (t12 + 0);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t30);
    t50 = (t13 - t14);
    t51 = (t50 + 1);
    xsi_vlogvar_assign_value(t3, t2, t49, *((unsigned int *)t30), t51);
    goto LAB20;

}


extern void work_m_13446146548102134601_3453361312_init()
{
	static char *pe[] = {(void *)Always_90_0};
	xsi_register_didat("work_m_13446146548102134601_3453361312", "isim/tb_awgn_top_isim_beh.exe.sim/work/m_13446146548102134601_3453361312.didat");
	xsi_register_executes(pe);
}
