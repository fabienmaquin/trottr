<script setup>
import { reactiveOmit } from "@vueuse/core";
import { StepperItem, useForwardProps } from "reka-ui";
import { cn } from '@/common/lib/utils';

const props = defineProps({
  step: { type: Number, required: true },
  disabled: { type: Boolean, required: false },
  completed: { type: Boolean, required: false },
  asChild: { type: Boolean, required: false },
  as: { type: null, required: false },
  class: { type: null, required: false },
});

const delegatedProps = reactiveOmit(props, "class");

const forwarded = useForwardProps(delegatedProps);
</script>

<template>
  <StepperItem
    v-slot="slotProps"
    v-bind="forwarded"
    :class="
      cn(
        'flex items-center gap-2 group data-[disabled]:pointer-events-none',
        props.class,
      )
    "
  >
    <slot v-bind="slotProps" />
  </StepperItem>
</template>
