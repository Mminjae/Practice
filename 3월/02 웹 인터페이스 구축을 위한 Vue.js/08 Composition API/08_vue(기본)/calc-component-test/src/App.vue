<template>
  <div>
    <Calc />
    <Calc2 />
    <Calc3 />
    <Calc4 />
    <Calc5 />
  </div>
</template>

<script>
import Calc from './components/Calc.vue'
import Calc2 from './components/Calc2.vue'
import Calc3 from './components/Calc3.vue'
import Calc4 from './components/Calc4.vue'
import Calc5 from './components/Calc5.vue'

export default {
  name: 'App',
  components: { Calc },
  components: { Calc2 },
  components: { Calc3 },
  components: { Calc4 },
  components: { Calc5 },
}
</script>
