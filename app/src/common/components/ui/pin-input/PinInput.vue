<script setup>
import { reactiveOmit } from "@vueuse/core";
import { PinInputRoot, useForwardPropsEmits } from "reka-ui";
import { cn } from '@/common/lib/utils';

const props = defineProps({
  modelValue: { type: null, required: false, default: () => [] },
  defaultValue: { type: Array, required: false },
  placeholder: { type: String, required: false },
  mask: { type: Boolean, required: false },
  otp: { type: Boolean, required: false },
  type: { type: null, required: false },
  dir: { type: String, required: false },
  disabled: { type: Boolean, required: false },
  id: { type: String, required: false },
  asChild: { type: Boolean, required: false },
  as: { type: null, required: false },
  name: { type: String, required: false },
  required: { type: Boolean, required: false },
  class: { type: null, required: false },
});
const emits = defineEmits(["update:modelValue", "complete"]);

const delegatedProps = reactiveOmit(props, "class");

const forwarded = useForwardPropsEmits(delegatedProps, emits);
</script>

<template>
  <PinInputRoot
    data-slot="pin-input"
    v-bind="forwarded"
    :class="
      cn(
        'flex items-center gap-2 has-disabled:opacity-50 disabled:cursor-not-allowed',
        props.class,
      )
    "
  >
    <slot />
  </PinInputRoot>
</template>
