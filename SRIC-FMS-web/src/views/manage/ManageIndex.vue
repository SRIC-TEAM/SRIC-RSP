<template>
    <div class="common-body-set-width">
      <el-container>
          <el-aside :width="asideWidth">
              <el-menu
              :style="minHeight"
              :default-active="deafultActiveMenu"
              :ellipsis="false"
              :collapse="isCollapse"
              router
              >
                  <el-menu-item index="UserManage">
                      <el-icon :size="25"><User /></el-icon>
                      <template #title>
                          <span class="manage-index-menu-item-span">{{ $t("menu.user") }}</span>
                      </template>
                  </el-menu-item>
                  <el-menu-item index="LibraryManage">
                      <el-icon :size="25"><Collection /></el-icon>
                      <template #title>
                          <span class="manage-index-menu-item-span">{{ $t("menu.library") }}</span>
                      </template>
                  </el-menu-item>
                  <el-menu-item index="LibraryCategoryManage">
                      <el-icon :size="25"><Collection /></el-icon>
                      <template #title>
                          <span class="manage-index-menu-item-span">{{ $t("menu.libraryCategory") }}</span>
                      </template>
                  </el-menu-item>
              </el-menu>
          </el-aside>
          <el-main>
              <router-view></router-view>
          </el-main>
      </el-container>
  </div>
</template>

<script lang="ts" setup>
import { useRoute } from 'vue-router'
import { ref,computed } from 'vue'

let route = useRoute()
const deafultActiveMenu = computed( () => { return route.name })//访问页面时默认菜单选项
let minHeight = ref("min-height:" + (window.innerHeight - 100) + "px;")//设置菜单栏高度
let isCollapse = ref(false)
let asideWidth = ref("200px")

const resetMinHeightAndMenu = () =>
{
  minHeight.value = "min-height:" + (window.innerHeight - 100) + "px;" //重置菜单栏高度(适应窗口大小)
  if(window.innerWidth < 800) //在窗口过小时折叠菜单栏
  {
      isCollapse.value = true
      asideWidth.value = "75px"
  }
  else
  {
      isCollapse.value = false
      asideWidth.value = "200px"
  }
}

resetMinHeightAndMenu()

window.addEventListener('resize',resetMinHeightAndMenu) //监听窗口变动
</script>

<style>
@import '@/css/common.css';

.manage-index-menu-item-span
{
  font-size: 20px;
  font-weight: bold;
}
</style>