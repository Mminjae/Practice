<template>
  <li><input type="checkbox" :checked="checked" /> {{ id }} - {{ name }}</li>
</template>

<script>
export default {
  name: 'CheckboxItem',
  props: {
    id: [Number, String],
    name: String,
    check: {
      type: Boolean,
      required: false,
      default: false,
    },
  },
};
</script>
