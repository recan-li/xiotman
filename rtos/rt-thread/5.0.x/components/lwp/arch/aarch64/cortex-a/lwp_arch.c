/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2021-05-18     Jesven       first version
 */

#include <rthw.h>
#include <rtthread.h>

#ifdef ARCH_MM_MMU

#include <lwp_arch.h>
#include <lwp_user_mm.h>

extern size_t MMUTable[];

int arch_user_space_init(struct rt_lwp *lwp)
{
    size_t *mmu_table;

    mmu_table = (size_t *)rt_pages_alloc(0);
    if (!mmu_table)
    {
        return -1;
    }

    lwp->end_heap = USER_HEAP_VADDR;
    memset(mmu_table, 0, ARCH_PAGE_SIZE);
    rt_hw_cpu_dcache_ops(RT_HW_CACHE_FLUSH, mmu_table, ARCH_PAGE_SIZE);

    lwp->aspace = rt_aspace_create(
        (void *)USER_VADDR_START, USER_VADDR_TOP - USER_VADDR_START, mmu_table);
    if (!lwp->aspace)
    {
        return -1;
    }

    return 0;
}

void *arch_kernel_mmu_table_get(void)
{
    return (void *)NULL;
}

void arch_user_space_vtable_free(struct rt_lwp *lwp)
{
    if (lwp && lwp->aspace->page_table)
    {
        rt_pages_free(lwp->aspace->page_table, 0);
        lwp->aspace->page_table = NULL;
    }
}

int arch_expand_user_stack(void *addr)
{
    int ret = 0;
    size_t stack_addr = (size_t)addr;

    stack_addr &= ~ARCH_PAGE_MASK;
    if ((stack_addr >= (size_t)USER_STACK_VSTART) &&
        (stack_addr < (size_t)USER_STACK_VEND))
    {
        void *map =
            lwp_map_user(lwp_self(), (void *)stack_addr, ARCH_PAGE_SIZE, 0);

        if (map || lwp_user_accessable(addr, 1))
        {
            ret = 1;
        }
    }
    return ret;
}

#endif
