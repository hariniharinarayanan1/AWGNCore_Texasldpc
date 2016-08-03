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



static void Always_6_0(char *t0)
{
    char t6[8];
    char t16[8];
    char t24[8];
    char t53[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;

LAB0:    t1 = (t0 + 2520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(6, ng0);
    t2 = (t0 + 2840);
    *((int *)t2) = 1;
    t3 = (t0 + 2552);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(7, ng0);

LAB5:    xsi_set_current_line(8, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    t13 = (t12 & 1);
    *((unsigned int *)t4) = t13;
    t14 = (t0 + 1048U);
    t15 = *((char **)t14);
    memset(t16, 0, 8);
    t14 = (t16 + 4);
    t17 = (t15 + 4);
    t18 = *((unsigned int *)t15);
    t19 = (t18 >> 1);
    t20 = (t19 & 1);
    *((unsigned int *)t16) = t20;
    t21 = *((unsigned int *)t17);
    t22 = (t21 >> 1);
    t23 = (t22 & 1);
    *((unsigned int *)t14) = t23;
    t25 = *((unsigned int *)t6);
    t26 = *((unsigned int *)t16);
    t27 = (t25 | t26);
    *((unsigned int *)t24) = t27;
    t28 = (t6 + 4);
    t29 = (t16 + 4);
    t30 = (t24 + 4);
    t31 = *((unsigned int *)t28);
    t32 = *((unsigned int *)t29);
    t33 = (t31 | t32);
    *((unsigned int *)t30) = t33;
    t34 = *((unsigned int *)t30);
    t35 = (t34 != 0);
    if (t35 == 1)
        goto LAB6;

LAB7:
LAB8:    t52 = (t0 + 1608);
    xsi_vlogvar_assign_value(t52, t24, 0, 0, 1);
    xsi_set_current_line(9, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t16 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 1);
    t10 = (t9 & 1);
    *((unsigned int *)t16) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 1);
    t13 = (t12 & 1);
    *((unsigned int *)t2) = t13;
    memset(t6, 0, 8);
    t5 = (t16 + 4);
    t18 = *((unsigned int *)t5);
    t19 = (~(t18));
    t20 = *((unsigned int *)t16);
    t21 = (t20 & t19);
    t22 = (t21 & 1U);
    if (t22 != 0)
        goto LAB12;

LAB10:    if (*((unsigned int *)t5) == 0)
        goto LAB9;

LAB11:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;

LAB12:    t14 = (t6 + 4);
    t15 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    t25 = (~(t23));
    *((unsigned int *)t6) = t25;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB14;

LAB13:    t33 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t33 & 1U);
    t34 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t34 & 1U);
    t17 = (t0 + 1048U);
    t28 = *((char **)t17);
    memset(t24, 0, 8);
    t17 = (t24 + 4);
    t29 = (t28 + 4);
    t35 = *((unsigned int *)t28);
    t36 = (t35 >> 0);
    t37 = (t36 & 1);
    *((unsigned int *)t24) = t37;
    t40 = *((unsigned int *)t29);
    t41 = (t40 >> 0);
    t42 = (t41 & 1);
    *((unsigned int *)t17) = t42;
    t44 = *((unsigned int *)t6);
    t45 = *((unsigned int *)t24);
    t46 = (t44 & t45);
    *((unsigned int *)t53) = t46;
    t30 = (t6 + 4);
    t38 = (t24 + 4);
    t39 = (t53 + 4);
    t48 = *((unsigned int *)t30);
    t49 = *((unsigned int *)t38);
    t50 = (t48 | t49);
    *((unsigned int *)t39) = t50;
    t51 = *((unsigned int *)t39);
    t54 = (t51 != 0);
    if (t54 == 1)
        goto LAB15;

LAB16:
LAB17:    t72 = (t0 + 1448);
    xsi_vlogvar_assign_value(t72, t53, 0, 0, 1);
    goto LAB2;

LAB6:    t36 = *((unsigned int *)t24);
    t37 = *((unsigned int *)t30);
    *((unsigned int *)t24) = (t36 | t37);
    t38 = (t6 + 4);
    t39 = (t16 + 4);
    t40 = *((unsigned int *)t38);
    t41 = (~(t40));
    t42 = *((unsigned int *)t6);
    t43 = (t42 & t41);
    t44 = *((unsigned int *)t39);
    t45 = (~(t44));
    t46 = *((unsigned int *)t16);
    t47 = (t46 & t45);
    t48 = (~(t43));
    t49 = (~(t47));
    t50 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t50 & t48);
    t51 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t51 & t49);
    goto LAB8;

LAB9:    *((unsigned int *)t6) = 1;
    goto LAB12;

LAB14:    t26 = *((unsigned int *)t6);
    t27 = *((unsigned int *)t15);
    *((unsigned int *)t6) = (t26 | t27);
    t31 = *((unsigned int *)t14);
    t32 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t31 | t32);
    goto LAB13;

LAB15:    t55 = *((unsigned int *)t53);
    t56 = *((unsigned int *)t39);
    *((unsigned int *)t53) = (t55 | t56);
    t52 = (t6 + 4);
    t57 = (t24 + 4);
    t58 = *((unsigned int *)t6);
    t59 = (~(t58));
    t60 = *((unsigned int *)t52);
    t61 = (~(t60));
    t62 = *((unsigned int *)t24);
    t63 = (~(t62));
    t64 = *((unsigned int *)t57);
    t65 = (~(t64));
    t43 = (t59 & t61);
    t47 = (t63 & t65);
    t66 = (~(t43));
    t67 = (~(t47));
    t68 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t68 & t66);
    t69 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t69 & t67);
    t70 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t70 & t66);
    t71 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t71 & t67);
    goto LAB17;

}


extern void work_m_16926621540905513289_1857211721_init()
{
	static char *pe[] = {(void *)Always_6_0};
	xsi_register_didat("work_m_16926621540905513289_1857211721", "isim/tb_awgn_top_isim_beh.exe.sim/work/m_16926621540905513289_1857211721.didat");
	xsi_register_executes(pe);
}
