<template>
  <div class="slide-no" v-if="$nav.currentPage > 1 && $nav.currentPage < $nav.total">
    {{ $nav.currentPage }} / {{ $nav.total }}
  </div>
</template>
