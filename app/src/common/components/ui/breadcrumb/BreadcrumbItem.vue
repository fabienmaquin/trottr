<script setup>
import { cn } from '@/common/lib/utils';

const props = defineProps({
  class: { type: null, required: false },
});
</script>

<template>
  <li
    data-slot="breadcrumb-item"
    :class="cn('inline-flex items-center gap-1.5', props.class)"
  >
    <slot />
  </li>
</template>
