<script setup>
import { reactiveOmit } from "@vueuse/core";
import { MenubarSeparator, useForwardProps } from "reka-ui";
import { cn } from '@/common/lib/utils';

const props = defineProps({
  asChild: { type: Boolean, required: false },
  as: { type: null, required: false },
  class: { type: null, required: false },
});

const delegatedProps = reactiveOmit(props, "class");

const forwardedProps = useForwardProps(delegatedProps);
</script>

<template>
  <MenubarSeparator
    data-slot="menubar-separator"
    :class="cn('bg-border -mx-1 my-1 h-px', props.class)"
    v-bind="forwardedProps"
  />
</template>
