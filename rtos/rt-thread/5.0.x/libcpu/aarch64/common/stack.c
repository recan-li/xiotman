/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2021-05-12     RT-Thread    init
 */
#include <board.h>
#include <rtthread.h>

#include <armv8.h>

#define INITIAL_SPSR_EL1 (PSTATE_EL1 | SP_ELx)

/**
 * This function will initialize thread stack
 *
 * @param tentry the entry of thread
 * @param parameter the parameter of entry
 * @param stack_addr the beginning stack address
 * @param texit the function will be called when thread exit
 *
 * @return stack address
 */
rt_uint8_t *rt_hw_stack_init(void *tentry, void *parameter,
                             rt_uint8_t *stack_addr, void *texit)
{
    rt_ubase_t *stk;

    stk = (rt_ubase_t *)stack_addr;

    *(--stk) = (rt_ubase_t)0; /* Q0 */
    *(--stk) = (rt_ubase_t)0; /* Q0 */
    *(--stk) = (rt_ubase_t)0; /* Q1 */
    *(--stk) = (rt_ubase_t)0; /* Q1 */
    *(--stk) = (rt_ubase_t)0; /* Q2 */
    *(--stk) = (rt_ubase_t)0; /* Q2 */
    *(--stk) = (rt_ubase_t)0; /* Q3 */
    *(--stk) = (rt_ubase_t)0; /* Q3 */
    *(--stk) = (rt_ubase_t)0; /* Q4 */
    *(--stk) = (rt_ubase_t)0; /* Q4 */
    *(--stk) = (rt_ubase_t)0; /* Q5 */
    *(--stk) = (rt_ubase_t)0; /* Q5 */
    *(--stk) = (rt_ubase_t)0; /* Q6 */
    *(--stk) = (rt_ubase_t)0; /* Q6 */
    *(--stk) = (rt_ubase_t)0; /* Q7 */
    *(--stk) = (rt_ubase_t)0; /* Q7 */
    *(--stk) = (rt_ubase_t)0; /* Q8 */
    *(--stk) = (rt_ubase_t)0; /* Q8 */
    *(--stk) = (rt_ubase_t)0; /* Q9 */
    *(--stk) = (rt_ubase_t)0; /* Q9 */
    *(--stk) = (rt_ubase_t)0; /* Q10 */
    *(--stk) = (rt_ubase_t)0; /* Q10 */
    *(--stk) = (rt_ubase_t)0; /* Q11 */
    *(--stk) = (rt_ubase_t)0; /* Q11 */
    *(--stk) = (rt_ubase_t)0; /* Q12 */
    *(--stk) = (rt_ubase_t)0; /* Q12 */
    *(--stk) = (rt_ubase_t)0; /* Q13 */
    *(--stk) = (rt_ubase_t)0; /* Q13 */
    *(--stk) = (rt_ubase_t)0; /* Q14 */
    *(--stk) = (rt_ubase_t)0; /* Q14 */
    *(--stk) = (rt_ubase_t)0; /* Q15 */
    *(--stk) = (rt_ubase_t)0; /* Q15 */

    *(--stk) = (rt_ubase_t)1;         /* X1 */
    *(--stk) = (rt_ubase_t)parameter; /* X0 */
    *(--stk) = (rt_ubase_t)3;         /* X3 */
    *(--stk) = (rt_ubase_t)2;         /* X2 */
    *(--stk) = (rt_ubase_t)5;         /* X5 */
    *(--stk) = (rt_ubase_t)4;         /* X4 */
    *(--stk) = (rt_ubase_t)7;         /* X7 */
    *(--stk) = (rt_ubase_t)6;         /* X6 */
    *(--stk) = (rt_ubase_t)9;         /* X9 */
    *(--stk) = (rt_ubase_t)8;         /* X8 */
    *(--stk) = (rt_ubase_t)11;        /* X11 */
    *(--stk) = (rt_ubase_t)10;        /* X10 */
    *(--stk) = (rt_ubase_t)13;        /* X13 */
    *(--stk) = (rt_ubase_t)12;        /* X12 */
    *(--stk) = (rt_ubase_t)15;        /* X15 */
    *(--stk) = (rt_ubase_t)14;        /* X14 */
    *(--stk) = (rt_ubase_t)17;        /* X17 */
    *(--stk) = (rt_ubase_t)16;        /* X16 */
    *(--stk) = (rt_ubase_t)19;        /* X19 */
    *(--stk) = (rt_ubase_t)18;        /* X18 */
    *(--stk) = (rt_ubase_t)21;        /* X21 */
    *(--stk) = (rt_ubase_t)20;        /* X20 */
    *(--stk) = (rt_ubase_t)23;        /* X23 */
    *(--stk) = (rt_ubase_t)22;        /* X22 */
    *(--stk) = (rt_ubase_t)25;        /* X25 */
    *(--stk) = (rt_ubase_t)24;        /* X24 */
    *(--stk) = (rt_ubase_t)27;        /* X27 */
    *(--stk) = (rt_ubase_t)26;        /* X26 */
    *(--stk) = (rt_ubase_t)29;        /* X29 */
    *(--stk) = (rt_ubase_t)28;        /* X28 */
    *(--stk) = (rt_ubase_t)0;         /* FPSR */
    *(--stk) = (rt_ubase_t)0;         /* FPCR */
    *(--stk) = (rt_ubase_t)texit;     /* X30 - procedure call link register. */
    *(--stk) = (rt_ubase_t)0;         /* sp_el0 */

    *(--stk) = INITIAL_SPSR_EL1;

    *(--stk) = (rt_ubase_t)tentry; /* Exception return address. */

    /* return task's current stack address */
    return (rt_uint8_t *)stk;
}
