<script setup>
import { reactiveOmit } from "@vueuse/core";
import { MenubarLabel } from "reka-ui";
import { cn } from '@/common/lib/utils';

const props = defineProps({
  asChild: { type: Boolean, required: false },
  as: { type: null, required: false },
  class: { type: null, required: false },
  inset: { type: Boolean, required: false },
});
const delegatedProps = reactiveOmit(props, "class", "inset");
</script>

<template>
  <MenubarLabel
    :data-inset="inset ? '' : undefined"
    v-bind="delegatedProps"
    :class="
      cn('px-2 py-1.5 text-sm font-medium data-[inset]:pl-8', props.class)
    "
  >
    <slot />
  </MenubarLabel>
</template>
