<script setup>
import { reactiveOmit } from "@vueuse/core";
import { StepperTrigger, useForwardProps } from "reka-ui";
import { cn } from '@/common/lib/utils';

const props = defineProps({
  asChild: { type: Boolean, required: false },
  as: { type: null, required: false },
  class: { type: null, required: false },
});

const delegatedProps = reactiveOmit(props, "class");

const forwarded = useForwardProps(delegatedProps);
</script>

<template>
  <StepperTrigger
    v-bind="forwarded"
    :class="
      cn(
        'p-1 flex flex-col items-center text-center gap-1 rounded-md',
        props.class,
      )
    "
  >
    <slot />
  </StepperTrigger>
</template>
